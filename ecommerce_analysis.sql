##1.funnel_analysis

Use  ecommerce_analysis;
WITH user_funnel AS (
    SELECT
        user_id,
        MAX(CASE WHEN event_type='view' THEN 1 ELSE 0 END) AS viewed,
        MAX(CASE WHEN event_type='cart' THEN 1 ELSE 0 END) AS carted,
        MAX(CASE WHEN event_type='purchase' THEN 1 ELSE 0 END) AS purchased
    FROM ecommerce
    GROUP BY user_id
)

SELECT
    ROUND(SUM(carted)/SUM(viewed)*100,2) AS view_to_cart_pct,
    ROUND(SUM(purchased)/SUM(viewed)*100,2) AS view_to_purchase_pct
FROM user_funnel;


##2.product_analysis

Use  ecommerce_analysis;
 select
      round(sum(price), 2) as GMV
      from ecommerce
      where event_type='purchase';
		
Select
    date(event_time) as dt,
    round(SUM(price), 2) as daily_gmv
from ecommerce
where event_type = 'purchase'
group by dt
order by dt;
     
select
     category_code,
     round(sum(price),2) as cat_gmv
     from ecommerce
     where event_type='purchase'
     and category_code is not null
     group by category_code
     order by cat_gmv desc
     limit 10;

select
     brand,
     round(sum(price), 2) as br_gmv
     from ecommerce
     where event_type='purchase'
     and brand is not null
     group by brand
     order by br_gmv desc
     limit 10;

select
    category_code,
    round(avg(price),2) as avg_price
from ecommerce
where event_type='purchase'
and category_code is not null
group by category_code
order by avg_price desc;     

##3.user_analysis

Use  ecommerce_analysis;
select
     user_id,
     round(sum(price),2) as total_spent
     from ecommerce
     where event_type='purchase'
     group by user_id
     order by total_spent desc
     limit 10;

select
    user_id,
    round(SUM(price),2) as total_spent,
    case
        when sum(price) >= 5000 then 'High Value'
        when SUM(price) >= 1000 then 'Medium Value'
        else 'Low Value'
    end as user_segment
   from ecommerce
   where event_type='purchase'
   group by user_id;

With funnel as(
select
     event_type,
     count(*) as cnt
     from ecommerce
     group by event_type
     )
select
      event_type,
      cnt,
      round(
           cnt * 100.0/
           max(
		   case when event_type='view'
           then cnt
           end) over()
           , 2
           ) as conversion_rate
           
           FROM funnel;
           
with t as(

select
     
     count(distinct
     case when event_type='view'
     then user_id
     end) as view_user,
     
     count(distinct
     case when event_type='purchase'
     then user_id
     end) as purchase_user,
     
     count(distinct
     case when event_type='cart'
     then user_id
     end) as cart_user
     
     from ecommerce
     )
     
    select
    round(
	purchase_user * 1.0/view_user, 2) as view_to_purchase,
    round(
    cart_user * 1.0/purchase_user, 2) as purchase_to_cart
    from t;
    
    ##4.retention_analysis
    
    Use  ecommerce_analysis;
    WITH fir_vis AS (

    SELECT
        user_id,
        MIN(DATE(event_time)) AS fir_date
    FROM ecommerce
    GROUP BY user_id

),

        new_users AS (

    SELECT
        fir_date,
        COUNT(DISTINCT user_id) AS new_user_cnt
    FROM fir_vis
    GROUP BY fir_date

),

        retention AS (

    SELECT DISTINCT
        f.user_id,
        f.fir_date
    FROM fir_vis f
    JOIN ecommerce e
        ON f.user_id = e.user_id
    WHERE DATEDIFF(
        DATE(e.event_time),
        f.fir_date
    ) = 1
    AND e.event_type = 'purchase'

)

    SELECT

    n.fir_date,

    n.new_user_cnt,

    COUNT(DISTINCT r.user_id) AS retained_users,

    ROUND(
        COUNT(DISTINCT r.user_id) * 1.0
        / n.new_user_cnt,
        4
    ) AS retention_rate

    FROM new_users n

    LEFT JOIN retention r
    ON n.fir_date = r.fir_date

    GROUP BY n.fir_date
    ORDER BY n.fir_date;
