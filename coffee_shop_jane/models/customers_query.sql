select 
c.id as customer_id
, c.name
, c.email
, MIN(o.created_at) as first_order_at 
, COUNT(distinct o.id) as num_orders
from `analytics-engineers-club.coffee_shop.customers` c
LEFT JOIN `analytics-engineers-club.coffee_shop.orders` o 
  ON c.id=o.customer_id
GROUP BY 1,2,3
ORDER BY first_order_at
limit 5;