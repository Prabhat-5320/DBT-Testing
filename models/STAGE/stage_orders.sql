

select
    o.orderid,
    o.orderdate,
    o.shipdate,
    o.shipmode,
    o.ordersellingprice,
    o.ordercostprice,
    o.ordersellingprice - o.ordercostprice as total_profit,
    c.customer_id,
    c.customer_name,
    c.segment,
    c.country,
    c.state,
    p.category,
    p.product_id,
    p.product_name,
    p.sub_category
from {{ ref("raw_orders") }} as o
left join {{ ref("raw_customers") }} as c on o.customerid = c.customer_id
left join {{ ref("raw_products") }} as p on o.productid = p.product_id
