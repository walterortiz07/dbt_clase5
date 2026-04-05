-- Modelo intermediate: Películas con idioma
with peliculas as (
    select * from {{ ref('stg_peliculas') }}
),
idioma as (
    select * from {{ ref('stg_idioma') }}
)

select
    p.id,
    p.titulo,
    p.descripcion,
    p.ano,
    p.puntaje,
    i.nombre as idioma
from peliculas p
left join idioma i on p.idioma_id = i.id
