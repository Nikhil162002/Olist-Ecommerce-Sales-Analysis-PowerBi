Select * from olist_customers_dataset;

Select count(*) from olist_customers_dataset;

describe olist_customers_dataset;

select * from olist_orders_dataset;

Select count(*) from olist_orders_dataset;

select * from olist_orders_dataset
where order_status = null;

select * from olist_orders_dataset
where order_delivered_customer_date = null;

SELECT COUNT(order_id) AS total_orders FROM olist_orders_dataset;

select * from olist_order_payments_dataset;

## TOTAL REVENUE = 16008872.12

Select ROUND(SUM(payment_value),2) AS total_revenue
FROM olist_order_payments_dataset;

##TOTAL ORDERS = 99441

Select count(*) from olist_orders_dataset;

## DISTINCT ORDERS = 96096

Select * from olist_customers_dataset;
Select count(distinct(customer_unique_id)) from olist_customers_dataset;

## ORDERS BY CITY

Select * from olist_customers_dataset;
Select * from olist_orders_dataset;

Select c.customer_city,
count(o.order_id) as total_orders_by_city
from olist_customers_dataset c join olist_orders_dataset o
on c.customer_id = o.customer_id
group by c.customer_city
order by total_orders_by_city desc
limit 10;


## CITY WISE TOTAL REVENUE

Select * from olist_order_payments_dataset;
select * from olist_customers_dataset;
select * from olist_orders_dataset;

SELECT 
c.customer_city,
ROUND(SUM(p.payment_value),2) AS total_revenue_by_city
FROM olist_customers_dataset c
JOIN olist_orders_dataset o 
ON c.customer_id = o.customer_id
JOIN olist_order_payments_dataset p 
ON o.order_id = p.order_id
GROUP BY c.customer_city
ORDER BY total_revenue_by_city DESC
limit 10;

## ORDERS BY STATE

Select * from olist_customers_dataset;
Select * from olist_orders_dataset;

Select c.customer_state,
count(o.order_id) as total_orders_by_state
from olist_customers_dataset c join olist_orders_dataset o
on c.customer_id = o.customer_id
group by c.customer_state
order by total_orders_by_state desc
limit 10;


## STATE WISE TOTAL REVENUE

Select * from olist_order_payments_dataset;
select * from olist_customers_dataset;
select * from olist_orders_dataset;

SELECT 
c.customer_state,
ROUND(SUM(p.payment_value),2) AS total_revenue_by_state
FROM olist_customers_dataset c
JOIN olist_orders_dataset o 
ON c.customer_id = o.customer_id
JOIN olist_order_payments_dataset p 
ON o.order_id = p.order_id
GROUP BY c.customer_state
ORDER BY total_revenue_by_state DESC
limit 10;

## MONTHLY ORDER TREND

select * from olist_orders_dataset;

SELECT DATE_FORMAT(order_purchase_timestamp, '%Y-%m') AS month,
COUNT(order_id) AS total_orders
FROM olist_orders_dataset
GROUP BY month
ORDER BY month desc;


## MONTH WISE REVENUE

Select * from olist_order_payments_dataset;
select * from olist_orders_dataset;

select date_format(o.order_purchase_timestamp, "%Y-%m") as month,
round(sum(p.payment_value),2) as total_revenue
from olist_orders_dataset o
join olist_order_payments_dataset p on o.order_id = p.order_id
group by month
order by month;

## TOP 10 SELLING PRODUCT

select * from olist_products_dataset;
select * from olist_order_items_dataset;

select count(i.order_item_id) as sold_product, product.product_category_name as product_category
from olist_order_items_dataset i join
olist_products_dataset product on i.product_id = product.product_id
group by product_category
order by sold_product desc
limit 10;


## REVENUE BY PRODUCT

select * from olist_order_payments_dataset;
select * from olist_products_dataset;
select * from olist_order_items_dataset;

select product.product_category_name as product_category,
round(sum(p.payment_value),2) as product_wise_total_revenue
from olist_products_dataset product join
olist_order_items_dataset i on product.product_id = i.product_id
join olist_order_payments_dataset p on i.order_id = p.order_id
group by product_category
order by product_wise_total_revenue desc;


## TOP CUSTOMERS BY SPENDING


select * from olist_order_payments_dataset;
select * from olist_orders_dataset;

select o.customer_id,
round(sum(p.payment_value),2) as total_spent
from olist_orders_dataset o
join olist_order_payments_dataset p
on o.order_id = p.order_id
group by o.customer_id
order by total_spent desc;


## REPEAT CUSTOMERS

select * from olist_orders_dataset;

select customer_id,
count(order_id) as total_orders
from olist_orders_dataset
group by customer_id
having total_orders>1
order by total_orders desc;

select count(distinct(order_id)) from olist_orders_dataset;
select count(*) from olist_orders_dataset;

## PAYMENT TYPE DISTRIBUTION


select * from olist_order_payments_dataset;

SELECT payment_type,
COUNT(*) AS total_transactions
FROM olist_order_payments_dataset
GROUP BY payment_type;


## REVENUE BY PAYMENT TYPE

select payment_type,
round(sum(payment_value),2) as total_spent
from olist_order_payments_dataset
group by payment_type
order by total_spent desc;

## AVERAGE DELIVERY TIME

select
avg(DATEDIFF(order_delivered_customer_date, order_purchase_timestamp)) as avg_delivery_days
FROM olist_orders_dataset
where order_delivered_customer_date is not null;

## LATE DELIVERIES

select 
COUNT(*) AS late_deliveries
FROM olist_orders_dataset
WHERE order_delivered_customer_date > order_estimated_delivery_date;

## AVERAGE RATING

select * from olist_order_reviews_dataset;

select round(avg(review_score),2) as avg_rating
from olist_order_reviews_dataset;


## AVERAGE DISTRIBUTION

select review_score, count(review_id) as total_reviews
from olist_order_reviews_dataset
group by review_score
order by total_reviews desc;






