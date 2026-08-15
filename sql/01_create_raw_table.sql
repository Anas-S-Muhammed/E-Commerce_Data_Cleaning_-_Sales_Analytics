CREATE TABLE raw_sales_data (
    id TEXT,
    customer_name TEXT,
    order_id TEXT,
    order_date TEXT,
    product TEXT,
    category TEXT,
    quantity TEXT,
    price TEXT,
    payment_method TEXT,
    status TEXT,
    total TEXT
);

SELECT * from raw_sales_data
