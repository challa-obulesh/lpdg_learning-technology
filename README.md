# LPDG Learning Technology

Separate learning repository for preparing SQL, Data Science, and Machine Learning skills around the LPDG/NEXORA industry challenge.

## Completed So Far

The first five learning areas are completed:

1. SQL Fundamentals
2. JOINs
3. CTEs
4. Window Functions
5. Pandas

The learning is always connected to LPDG-style gateway telemetry instead of unrelated datasets.

## SQL Roadmap - Next

### 6. Advanced SQL
Learn and practice:

- CASE WHEN
- Subqueries
- EXISTS / NOT EXISTS
- UNION / UNION ALL
- NULL handling
- Date and time functions
- Conditional aggregation
- Multiple aggregations in one query
- Query optimization basics

### 7. SQL Feature Preparation

Use gateway telemetry to create ML-ready summaries:

- average offline duration per gateway
- total disconnections
- total reboots
- average RSSI
- minimum / maximum values
- weekly gateway metrics
- previous-week metrics
- week-over-week changes

Target flow:

SQL raw telemetry
-> filter
-> join
-> aggregate
-> window functions
-> ML-ready dataset

## ML Roadmap

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

Practice:

- missing values
- duplicates
- outliers
- numerical vs categorical data
- scaling
- encoding
- train/validation/test split

For LPDG, understand why a time-based split is more appropriate than randomly mixing past and future observations.

### ML 03 - Exploratory Data Analysis

Practice:

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

Convert telemetry into useful features:

- avg_offline_duration
- total_disconnections
- reboot_frequency
- avg_rssi
- previous_week_offline
- change_from_previous_week
- rolling averages

### ML 05 - Classification

Learn simple models in this order:

1. Logistic Regression
2. Decision Tree
3. Random Forest
4. Gradient Boosting
5. LightGBM

Focus on understanding what each model receives as input and what it produces as output.

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

For LPDG, connect evaluation to operational cost:

- false positive -> unnecessary technician visit
- false negative -> missed gateway problem

### ML 07 - Time-Based Validation

Practice:

Past weeks -> training
Future weeks -> validation/test

Avoid random row splitting when it would allow future information to influence training.

### ML 08 - LPDG End-to-End

Build the complete learning pipeline:

Telemetry
-> SQL/Pandas preparation
-> Feature Engineering
-> Model
-> Risk Score
-> Ranking
-> Top 15 Gateways
-> Evaluation

## Current LPDG Model Connection

The existing Part 1 challenge flow uses:

Telemetry
-> Features
-> LightGBM
-> Risk Score
-> Rank
-> Top 15 Gateways

The learning repository is for understanding each component step-by-step before applying the concepts to the challenge project.

## Repository Structure

```
lpdg_learning-technology/
├── sql/
│   ├── day01.sql
│   ├── day02_joins.sql
│   ├── day03_cte.sql
│   └── day04_windows.sql
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
