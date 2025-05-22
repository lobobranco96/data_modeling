CREATE TABLE IF NOT EXISTS itens_pedido AS
SELECT DISTINCT
    order_id,
    order_item_id,
    product_id,
    seller_id,
    shipping_limit_date,
    price,
    freight_value
FROM olist_order_items_dataset;