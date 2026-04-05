with source as (
    select * from {{ source('dvd_rental', 'language') }}
)

select
    language_id as id,
    name as nombre
from source
