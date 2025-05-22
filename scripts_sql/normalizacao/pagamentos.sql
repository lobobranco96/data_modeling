CREATE TABLE IF NOT EXISTS pagamentos AS
SELECT DISTINCT
    order_id,
    payment_sequential,
    payment_type,
    payment_installments,
    payment_value
FROM olist_order_payments_dataset;