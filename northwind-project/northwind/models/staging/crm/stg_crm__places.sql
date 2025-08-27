with renamed as (
    select
        place_id as new_place_id,
        place_name as new_place_name
    from {{ ref('places') }}
)

select * from renamed