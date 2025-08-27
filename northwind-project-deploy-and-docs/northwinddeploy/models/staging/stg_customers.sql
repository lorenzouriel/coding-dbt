with source as (
    select * from {{ ref('raw_customers') }}
),
customers_transformation as (
    select
        customer_id,
        company_name,
        contact_name,
        contact_title,
        address,
        city,
        region,
        postal_code,
        country,
        phone,
        fax
    from
        source
)

select * from customers_transformation