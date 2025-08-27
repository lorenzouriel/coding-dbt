{{
    config(
        materialized='incremental',
        unique_key='new_place_id'
    )
}}

with totals as (
    select
        new_place_id,
        sum(new_place_id) as total_count
    from {{ ref('stg_crm__places') }}
    group by new_place_id
)

select *
from totals

{% if is_incremental() %}

    -- This condition ensures that only new records are processed during incremental runs
    where new_place_id > (
        select coalesce(max(new_place_id), 0)
        from {{ this }}
    )

{% endif %}