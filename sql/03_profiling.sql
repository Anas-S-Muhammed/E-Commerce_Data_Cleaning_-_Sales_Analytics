SELECT
count(*) FILTER (where id is null or id = " ") as null_id,
count(*) FILTER (where customer_name is null or customer_name = '') as null_customer_name,
count(*) FILTER (where order_id = null or order_id = ' ') as null_order_id,

