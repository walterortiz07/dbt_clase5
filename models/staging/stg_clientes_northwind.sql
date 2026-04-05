-- Staging de la tabla customers de Northwind
with source as (
    select * from {{ source('northwind', 'customers') }}
)

select
    customer_id as id,
    company_name as nombre_empresa,
    contact_name as nombre_contacto,
    country as pais
from source
