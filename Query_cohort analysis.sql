WITH first_purchase AS(
  SELECT user_id,
date(date_trunc(purchase_date,month)) AS cohort_date
FROM `ecommerce.user_first_purchase`)

,cohort_user AS(
  SELECT cohort_date,
  COUNT(1) AS cohort_cnt
  FROM first_purchase
  GROUP BY all
)

,retained_user AS(
  SELECT cohort_date,
  date(date_trunc(event_time,month)) AS purchase_date,
  date_diff(date(date_trunc(p.event_time,month)),f.cohort_date,month) AS diff,
  COUNT(DISTINCT p.user_id) AS retained_cnt
  FROM ecommerce.complete_purchase p
  LEFT JOIN first_purchase f
  ON p.user_id=f.user_id
  GROUP BY all
)

SELECT ru.cohort_date, ru.diff, cu.cohort_cnt, ru.retained_cnt,
SAFE_DIVIDE(ru.retained_cnt,cu.cohort_cnt) AS retention
FROM retained_user ru
LEFT JOIN cohort_user cu
ON ru.cohort_date=cu.cohort_date
