CREATE TABLE IF NOT EXISTS geolocalizacao AS
SELECT DISTINCT
    geolocation_zip_code_prefix,
    geolocation_lat,
    geolocation_lng,
    geolocation_city,
    geolocation_state
FROM (
    SELECT * FROM olist_geolocation_dataset_part1
    UNION ALL
    SELECT * FROM olist_geolocation_dataset_part2
) AS geolocation;