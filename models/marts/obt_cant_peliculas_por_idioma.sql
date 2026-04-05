-- Modelo mart: Cantidad de películas por idioma
with peliculas_idioma as (
    select * from {{ ref('int_peliculas_con_idioma') }}
)

select
    idioma,
    count(*) as cantidad_peliculas
from peliculas_idioma
where idioma is not null
group by idioma
order by cantidad_peliculas desc
