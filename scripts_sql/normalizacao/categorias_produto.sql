CREATE TABLE IF NOT EXISTS categorias_produto AS
SELECT DISTINCT
    product_category_name,
    product_category_name_english
FROM product_category_name_translation;