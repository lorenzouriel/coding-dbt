with int_places as (
    select
        new_place_id,
        count(new_place_name) as places_count
    from {{ ref('stg_crm__places') }}
    group by new_place_id
)

select * from int_places