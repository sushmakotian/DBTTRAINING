{{ config(materialized="table") }}


select id, orderid, paymentmethod, status, amount, created, _batched_at
from {{ source("stripe", "payment") }}
