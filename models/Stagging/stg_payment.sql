{{
    config(
        materialized='table'
    )
}}


select * from {{ source("stripe", "payment") }}