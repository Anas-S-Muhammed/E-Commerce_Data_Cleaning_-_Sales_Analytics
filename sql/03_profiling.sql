SELECT
    COUNT(*) FILTER (WHERE id IS NULL OR id = '') AS null_id,
    COUNT(*) FILTER (WHERE customer_name IS NULL OR customer_name = '') AS null_customer_name,
    COUNT(*) FILTER (WHERE order_id IS NULL OR order_id = '') AS null_order_id,
    COUNT(*) FILTER (WHERE order_date IS NULL OR order_date = '') AS null_order_date,
    COUNT(*) FILTER (WHERE product IS NULL OR product = '') AS null_product,
    COUNT(*) FILTER (WHERE category IS NULL OR category = '') AS null_category,
    COUNT(*) FILTER (WHERE quantity IS NULL OR quantity = '') AS null_quantity,
    COUNT(*) FILTER (WHERE price IS NULL OR price = '') AS null_price,
    COUNT(*) FILTER (WHERE payment_method IS NULL OR payment_method = '') AS null_payment_method,
    COUNT(*) FILTER (WHERE status IS NULL OR status = '') AS null_status,
    COUNT(*) FILTER (WHERE total IS NULL OR total = '') AS null_total
FROM raw_sales_data;

SELECT id, order_id, COUNT(*)
FROM raw_sales_data
GROUP BY id, order_id, customer_name, order_date, product, category, quantity, price, payment_method, status, total
HAVING COUNT(*) > 1;


SELECT DISTINCT category FROM raw_sales_data ORDER BY category;

SELECT DISTINCT status FROM raw_sales_data ORDER BY status;

SELECT DISTINCT payment_method FROM raw_sales_data ORDER BY payment_method;


SELECT COUNT(*) FROM raw_sales_data
WHERE category = 'Category' OR status = 'Status' OR payment_method = 'Payment_Method';