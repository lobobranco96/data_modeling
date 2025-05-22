CREATE TABLE IF NOT EXISTS vendedores AS
SELECT DISTINCT
    seller_id,
    seller_zip_code_prefix,
    seller_city,
    seller_state
FROM olist_sellers_dataset;