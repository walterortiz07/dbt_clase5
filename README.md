Welcome to tu proyecto dbt!

## Fuentes de datos utilizadas

Este proyecto utiliza dos fuentes relacionales públicas:

- [DVD Rental](https://github.com/gordonkwokkwok/DVD-Rental-PostgreSQL-Project) (esquema: dvd_rental)
- [Northwind](https://github.com/pthom/northwind_psql) (esquema: northwind)

Ambas fueron cargadas a la base de datos `clase5` mediante Airbyte.

## Árbol de modelos

```
models/
├── staging/
│   ├── stg_peliculas.sql           # Staging de películas (dvd_rental)
│   ├── stg_idioma.sql              # Staging de idiomas (dvd_rental)
│   └── stg_clientes_northwind.sql  # Staging de clientes (northwind)
├── intermediate/
│   └── int_peliculas_con_idioma.sql    # Join películas con idioma
└── marts/
	└── obt_cant_peliculas_por_idioma.sql # Mart: cantidad de películas por idioma
```

## Ejecución básica

```bash
dbt run
dbt test
```

## DAGs generados por dbt docs

A continuación se muestran los DAGs (grafos de dependencias) generados por dbt docs para este proyecto:

### DAG 1
![DAG 1](dbt_dag1.png)

### DAG 2
![DAG 2](dbt_dag2.png)

## Recursos útiles
- Aprende más sobre dbt [en la documentación](https://docs.getdbt.com/docs/introduction)
- Preguntas frecuentes en [Discourse](https://discourse.getdbt.com/)
- Únete al [chat de la comunidad](https://community.getdbt.com/)
- Encuentra [eventos de dbt](https://events.getdbt.com)
- Lee el [blog de dbt](https://blog.getdbt.com/)

# dbt_clase5
