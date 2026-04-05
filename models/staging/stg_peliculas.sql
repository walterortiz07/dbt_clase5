with source as (
    select * from {{ source('dvd_rental', 'film') }}
)

select
    film_id as id,
    title as titulo,
    description as descripcion,
    release_year as ano,
    rental_rate as puntaje,
    language_id as idioma_id
from source
