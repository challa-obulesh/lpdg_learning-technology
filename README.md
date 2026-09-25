# LPDG Learning Technology

Separate learning repository for preparing SQL, Data Science, and Machine Learning skills around the LPDG/NEXORA industry challenge.

## Current Progress

### Completed

Only **SQL Fundamentals** is completed so far.

Covered:

- SELECT
- WHERE
- GROUP BY
- COUNT
- SUM
- AVG
- HAVING
- basic gateway-level aggregation

LPDG-style telemetry columns:

- gateway_id
- timestamp
- offline_duration
- disconnection_count
- reboot_count
- rssi

Learning pattern:

SELECT
-> FILTER
-> GROUP BY
-> CALCULATE
-> PRESENT

## Next Learning Day

### Day 02 - SQL JOINs

**Goal:** Learn how to combine different LPDG data sources.

LPDG example tables:

**telemetry**
- gateway_id
- timestamp
- offline_duration
- disconnection_count
- reboot_count
- rssi

**gateway_master**
- gateway_id
- gateway_name
- location
- gateway_type
- installation_date

Learn:

1. INNER JOIN
2. LEFT JOIN
3. ON condition
4. joining using gateway_id
5. one-to-one vs one-to-many relationships
6. filtering after a JOIN
7. GROUP BY after a JOIN
8. avoiding duplicate rows after a JOIN

### Day 02 Practice Questions

1. Show telemetry records with gateway names.
2. Show all gateways, including gateways with no telemetry.
3. Find average offline duration by gateway name.
4. Find total disconnections by gateway location.
5. Find gateways with average offline duration greater than 30 minutes.
6. Count telemetry records for each gateway.
7. Identify gateways that exist in the master table but have no telemetry records.

### Expected Learning

Understand this flow:

telemetry
+
gateway_master
↓
JOIN using gateway_id
↓
combined gateway information
↓
FILTER / GROUP BY
↓
useful LPDG metric

## SQL Roadmap

### SQL 01 - Fundamentals
**Status: COMPLETED**

### SQL 02 - JOINs
**Status: NEXT**

- INNER JOIN
- LEFT JOIN
- ON
- one-to-one
- one-to-many
- JOIN + WHERE
- JOIN + GROUP BY

### SQL 03 - CTEs
**Status: UPCOMING**

- WITH
- breaking a large query into steps
- preparing intermediate datasets

### SQL 04 - Window Functions
**Status: UPCOMING**

- ROW_NUMBER
- RANK
- LAG
- LEAD
- SUM() OVER
- AVG() OVER
- PARTITION BY

### SQL 05 - Advanced SQL
**Status: UPCOMING**

- CASE WHEN
- subqueries
- EXISTS / NOT EXISTS
- UNION / UNION ALL
- NULL handling
- date and time functions
- conditional aggregation

## ML Roadmap

ML will be learned separately and then connected to the LPDG challenge.

### ML 01 - Fundamentals
- feature
- label / target
- training data
- validation data
- test data
- prediction
- classification
- regression
- risk score

### ML 02 - Data Preparation
- missing values
- duplicates
- outliers
- numerical vs categorical data
- scaling
- encoding
- train/validation/test split

### ML 03 - EDA
- distributions
- correlations
- feature relationships
- class balance
- gateway-level patterns
- time-based patterns

### ML 04 - Feature Engineering
- avg_offline_duration
- total_disconnections
- reboot_frequency
- avg_rssi
- previous_week_offline
- change_from_previous_week
- rolling averages

### ML 05 - Classification
- Logistic Regression
- Decision Tree
- Random Forest
- Gradient Boosting
- LightGBM

### ML 06 - Evaluation
- confusion matrix
- accuracy
- precision
- recall
- F1-score
- ROC-AUC
- PR-AUC
- threshold selection
- false positives
- false negatives

### ML 07 - Time-Based Validation
Past weeks -> training
Future weeks -> validation/test

### ML 08 - LPDG End-to-End
Telemetry
-> SQL/Pandas preparation
-> Feature Engineering
-> Model
-> Risk Score
-> Ranking
-> Top 15 Gateways
-> Evaluation

## Current LPDG Part 1 Connection

Telemetry
-> Features
-> LightGBM
-> Risk Score
-> Rank
-> Top 15 Gateways

This learning repository is for understanding each component step-by-step before applying it to the actual challenge.

## Repository Structure

```
lpdg_learning-technology/
├── sql/
│   ├── day01.sql
│   ├── day02_joins.sql
│   ├── day03_cte.sql
│   ├── day04_windows.sql
│   └── day05_advanced.sql
├── python/
│   ├── pandas/
│   └── eda/
├── ml/
│   ├── fundamentals/
│   ├── preprocessing/
│   ├── feature_engineering/
│   ├── classification/
│   ├── evaluation/
│   └── lightgbm/
├── lpdg/
│   ├── experiments/
│   └── notes/
└── README.md
```

## Core Learning Principle

Learn the concept first, then apply it to LPDG.

Data
-> Understand
-> Prepare
-> Transform
-> Create Features
-> Train
-> Evaluate
-> Explain

Local SQLite databases such as lpdg.db are ignored and should not be committed.
