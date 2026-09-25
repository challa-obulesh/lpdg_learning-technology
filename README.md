# LPDG Learning Technology

Separate learning repository for preparing SQL, Data Science, and Machine Learning skills around the LPDG/NEXORA industry challenge.

## Current Progress

### Completed

Only **SQL Fundamentals** is completed so far.

SQL fundamentals covered:

- SELECT
- selecting required columns
- WHERE filtering
- GROUP BY
- COUNT
- SUM
- AVG
- HAVING
- basic gateway-level aggregation

LPDG-style gateway telemetry columns:

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

## SQL Roadmap

### SQL 01 - Fundamentals
- SELECT
- WHERE
- GROUP BY
- COUNT
- SUM
- AVG
- HAVING

**Status: COMPLETED**

### SQL 02 - JOINs
- INNER JOIN
- LEFT JOIN
- joining gateway telemetry with gateway master data
- understanding one-to-one and one-to-many relationships

**Status: NEXT**

### SQL 03 - CTEs
- WITH
- breaking a large query into steps
- preparing intermediate datasets

**Status: UPCOMING**

### SQL 04 - Window Functions
- ROW_NUMBER
- RANK
- LAG
- LEAD
- SUM() OVER
- AVG() OVER
- PARTITION BY

**Status: UPCOMING**

### SQL 05 - Advanced SQL
- CASE WHEN
- subqueries
- EXISTS / NOT EXISTS
- UNION / UNION ALL
- NULL handling
- date and time functions
- conditional aggregation

**Status: UPCOMING**

## ML Roadmap

ML starts after the required Python/Pandas foundation, but the concepts will be introduced using the LPDG problem.

### ML 01 - ML Fundamentals
Understand:

- feature
- label / target
- training data
- validation data
- test data
- prediction
- classification
- regression
- risk score

LPDG example:

Features:
- offline_duration
- disconnection_count
- reboot_count
- rssi

Target:
- gateway problem / no problem

### ML 02 - Data Preparation
- missing values
- duplicates
- outliers
- numerical vs categorical data
- scaling
- encoding
- train/validation/test split

### ML 03 - Exploratory Data Analysis
- distributions
- correlations
- feature relationships
- class balance
- gateway-level patterns
- time-based patterns

Tools:
- Pandas
- NumPy
- Matplotlib

### ML 04 - Feature Engineering
Create LPDG-style features:

- avg_offline_duration
- total_disconnections
- reboot_frequency
- avg_rssi
- previous_week_offline
- change_from_previous_week
- rolling averages

### ML 05 - Classification
Learn:

1. Logistic Regression
2. Decision Tree
3. Random Forest
4. Gradient Boosting
5. LightGBM

### ML 06 - Model Evaluation
Learn:

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

LPDG connection:

- false positive -> unnecessary technician visit
- false negative -> missed gateway problem

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

The existing challenge flow is:

Telemetry
-> Features
-> LightGBM
-> Risk Score
-> Rank
-> Top 15 Gateways

The learning repository is for learning each concept step-by-step before applying it to the actual challenge.

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
