with sources as (

    select * from {{ source('postgres', 'orders') }}

)

select 
    *
from sources
where ship_country = 'Brazil'