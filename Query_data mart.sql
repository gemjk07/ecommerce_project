create or replace table ecommerce.dm_user_behavior_montly as (
with
view_product as (
    select date_trunc(event_time, month) as dt
        , count(distinct user_session) as view_session_cnt
        , count(distinct user_id) as view_user_cnt
        , count(event_type) as view_cnt
    from ecommerce.view_product
    where 1=1
        -- and date(event_time) between '2019-10-01' and '2019-10-31'
    group by all
)

, add_to_cart as (
    select date_trunc(event_time, month) as dt
        , count(event_type) as add_cart_cnt
        , count(distinct user_id) as add_cart_user
    from ecommerce.add_to_cart
    where 1=1
        -- and date(event_time) between '2019-10-01' and '2019-10-31'
    group by all   
)

, remove_from_cart as (
    select date_trunc(event_time, month) as dt
        , count(event_type) as remove_cart_cnt
        , count(distinct user_id) as remove_cart_user
    from ecommerce.remove_from_cart
    where 1=1
        -- and date(event_time) between '2019-10-01' and '2019-10-31'
    group by all   
)

, complete_purchase as (
    select date_trunc(event_time, month) as dt
        , count(event_type) as purchase_cnt
        , count(distinct user_id) as purchase_user
        , sum(price) as purchase_revenue
    from ecommerce.complete_purchase
    where 1=1
        -- and date(event_time) between '2019-10-01' and '2019-10-31'
    group by all   
)

select date(v.dt) as dt
    # acquisition
    , v.view_session_cnt
    , v.view_user_cnt

    # activation
    , v.view_cnt
    , c.add_cart_cnt
    , c.add_cart_user
    , r.remove_cart_cnt
    , r.remove_cart_user
    , p.purchase_cnt
    , p.purchase_user

    # revenue
    , p.purchase_revenue
from view_product as v
left join add_to_cart as c
    on v.dt = c.dt
left join remove_from_cart as r
    on v.dt = r.dt
left join complete_purchase as p
    on v.dt = p.dt
order by 1
)