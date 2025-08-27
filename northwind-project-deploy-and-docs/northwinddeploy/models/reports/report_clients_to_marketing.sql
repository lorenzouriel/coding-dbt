-- CONFIG
{{ config(
    schema='gold',
    materialized='table'
) }}

-- IMPORTS
with source_customer as (
    select * from {{ ref('stg_customers') }}
),
source_orders as (
    select * from {{ ref('stg_orders') }}
),
source_order_details as (
    select * from {{ ref('stg_order_details') }}
),

-- BUSINESS LOGIC
clientes_para_marketing as (
    select 
        customers.company_name, 
        sum(order_details.unit_price * order_details.quantity * (1.0 - order_details.discount)) as total,
        ntile(5) over (order by sum(order_details.unit_price * order_details.quantity * (1.0 - order_details.discount)) desc) as group_number
    from 
        source_customer as customers
    inner join 
        source_orders as orders on customers.customer_id = orders.customer_id
    inner join 
        source_order_details as order_details on order_details.order_id = orders.order_id
    group by 
        customers.company_name
    order by 
        total desc
)

-- FINAL SELECTION
select *
from clientes_para_marketing
where group_number >= 3