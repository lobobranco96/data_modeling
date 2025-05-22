CREATE TABLE IF NOT EXISTS clientes AS
SELECT DISTINCT
    customer_id,
    customer_unique_id,
    customer_city,
    customer_state
FROM olist_customers_dataset;