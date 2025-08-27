with sources as (

    select * from {{ source('postgres', 'customers') }}

)

select 
    *
from sources
where country = 'Brazil'