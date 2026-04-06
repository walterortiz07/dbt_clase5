-- Singular test personalizado: puntaje debe ser mayor o igual a 0
select *
from {{ ref('stg_peliculas') }}
where puntaje < 0
