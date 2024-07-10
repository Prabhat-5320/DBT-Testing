

select product_id, product_name, category, sub_category, sum(total_profit) as profit
from {{ ref("stage_orders") }}
group by 1, 2, 3, 4
