{{
    config(
        materialized='table'
    )
}}

select * from raw.GLOBALMART.CUSTOMERS