

select
    o.orderid,
    o.orderdate,
    o.shipdate,
    o.shipmode,
    o.ordersellingprice,
    o.ordercostprice,
    o.ordersellingprice - o.ordercostprice as total_profit,
    c.customerid,
    c.customername,
    c.segment,
    c.country,
    c.state
from {{ ref("raw_orders") }} as o
left join {{ ref("raw_customers") }} as c on o.customerid = c.customerid

