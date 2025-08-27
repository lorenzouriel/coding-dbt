with source as (
    select * from {{ ref('raw_order_details') }}
),
order_details_transformation as (
    select
        order_id,
        product_id,
        unit_price,
        quantity,
        discount
    from
        source
)

select * from order_details_transformation