-- LPDG SQL Learning - Day 01
-- Focus: SELECT -> FILTER -> GROUP BY -> CALCULATE
-- Dataset concept: LPDG/NEXORA gateway telemetry

-- 1. Inspect all gateway telemetry
SELECT *
FROM gateways;

-- 2. Select only the columns needed for analysis
SELECT
    gateway_id,
    timestamp,
    offline_duration,
    disconnection_count,
    reboot_count,
    rssi
FROM gateways;

-- 3. Filter gateways with long offline duration
SELECT
    gateway_id,
    timestamp,
    offline_duration
FROM gateways
WHERE offline_duration > 30;

-- 4. Filter gateways with many disconnections
SELECT
    gateway_id,
    disconnection_count
FROM gateways
WHERE disconnection_count >= 5;

-- 5. Calculate average offline duration for each gateway
SELECT
    gateway_id,
    AVG(offline_duration) AS avg_offline_duration
FROM gateways
GROUP BY gateway_id;

-- 6. Count total records for each gateway
SELECT
    gateway_id,
    COUNT(*) AS telemetry_records
FROM gateways
GROUP BY gateway_id;

-- 7. Calculate average RSSI for each gateway
SELECT
    gateway_id,
    AVG(rssi) AS avg_rssi
FROM gateways
GROUP BY gateway_id;

-- 8. Find gateways with high average offline duration
SELECT
    gateway_id,
    AVG(offline_duration) AS avg_offline_duration
FROM gateways
GROUP BY gateway_id
HAVING AVG(offline_duration) > 30;

-- 9. LPDG-style analysis:
-- Find gateways that show both high disconnections and long offline duration.
SELECT
    gateway_id,
    AVG(offline_duration) AS avg_offline_duration,
    SUM(disconnection_count) AS total_disconnections
FROM gateways
GROUP BY gateway_id
HAVING AVG(offline_duration) > 30
   AND SUM(disconnection_count) >= 5;

-- Learning pattern:
-- What data do I need?
--        ↓
-- SELECT required columns
--        ↓
-- Filter relevant records with WHERE
--        ↓
-- Group by gateway with GROUP BY
--        ↓
-- Calculate metrics with AVG / SUM / COUNT
--        ↓
-- Present the result
