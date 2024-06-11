{{
    config(
        materialized='table'
    )
}}

select id,
        user_id,
        order_date,
        status,
        _etl_loaded_at
         from {{ source('jaffle_shop', 'orders') }}