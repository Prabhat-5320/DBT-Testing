{{
    config(
        materialized='table'
    )
}}


select customer_id,segment,country, sum(total_profit) as profit
from {{ ref("stage_orders") }}
group by 1, 2, 3
