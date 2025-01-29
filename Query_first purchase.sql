CREATE OR REPLACE TABLE ecommerce.user_first_purchase AS(
  WITH base AS(
  SELECT user_id, event_time, product_id, category_id,
  row_number() over(partition by user_id order by event_time) as rn
  FROM ecommerce.complete_purchase
  ORDER BY event_time
)

SELECT user_id, 
event_time as purchase_date,
product_id, 
category_id
FROM base
WHERE 1=1
AND rn=1
ORDER BY 2)
