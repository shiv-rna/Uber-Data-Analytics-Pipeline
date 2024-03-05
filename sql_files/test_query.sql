-- Test Query:1
SELECT
    VendorID,
    SUM(fare_amount)
FROM
    `uber-data-analytics-416119.uber_data_engineering_yt.fact_table`
GROUP BY
    VendorID;



-- Test Query:2
SELECT
    b.payment_type_name,
    AVG(a.tip_amount)
FROM
    `uber-data-analytics-416119.uber_data_engineering_yt.fact_table` a
JOIN
    `uber-data-analytics-416119.uber_data_engineering_yt.payment_type_dim` b
        ON a.payment_type_id = b.payment_type_id
GROUP BY
    b.payment_type_name;

-- Tasks for future Analytics & Visuals
-- Find top 10 pickup locations based on the number of trips
-- Find total number of trips by passenger count
-- Find average fare amount by hour of the day