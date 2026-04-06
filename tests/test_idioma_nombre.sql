-- Singular test personalizado: nombre de idioma no debe estar vacío
select *
from {{ ref('stg_idioma') }}
where nombre = '' or nombre is null
