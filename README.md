# Sales & Operations Performance Analytics

An end-to-end data analytics project focused on evaluating **sales performance, profitability, regional performance, product performance, channel efficiency, and operational patterns** using SQL, Python, and Power BI.

---

## Project Overview

This project analyzes transactional sales data to understand how different business dimensions influence overall sales and operational performance.

The analysis combines **PostgreSQL, Python, and Power BI** to transform transactional records into structured performance indicators and business insights.

The workflow covers:

**Data Preparation → Data Validation → Exploratory Analysis → KPI Analysis → Performance Comparison → Dashboarding → Recommendations**

---

## Business Problem

Sales performance can vary significantly across regions, products, channels, and operating segments.

A business therefore needs to understand not only how much it sells, but also:

* Where revenue is being generated
* Which areas contribute the most profit
* Which products perform strongly
* Which regions underperform
* Which channels require attention
* Where operational issues such as returns are concentrated
* Which areas should be prioritized for improvement

The objective of this project is to provide a structured analytical view of these performance differences.

---

## Project Objectives

1. Analyze overall sales and revenue trends.
2. Evaluate profitability across different business dimensions.
3. Compare regional and channel performance.
4. Identify high- and low-performing product categories.
5. Analyze return patterns as an operational performance indicator.
6. Develop business-oriented KPIs for performance monitoring.
7. Build an interactive Power BI dashboard.
8. Translate analytical findings into practical improvement recommendations.

---

## Dataset

The project uses transactional sales data containing business attributes such as:

* Transaction dates
* Customer information
* Products
* Product categories
* Brands
* Cities/regions
* Sales channels
* Outlet types
* Revenue
* Profit
* Discounts
* Return indicators

The data was prepared before analytical processing to improve consistency and usability.

---

## Technology Stack

### SQL — PostgreSQL

Used for:

* Data inspection
* Data cleaning
* Data validation
* Date standardization
* Handling missing values
* Standardizing categorical fields
* Preparing structured analytical data

### Python

Libraries used:

* **Pandas** — data manipulation
* **NumPy** — numerical analysis
* **Matplotlib** — visualization
* **Seaborn** — analytical visualization
* **Jupyter Notebook** — analysis environment

Python was used for exploratory analysis, KPI calculations, trend analysis, and performance comparisons.

### Power BI

Used for:

* Interactive KPI dashboards
* Sales trend analysis
* Profit analysis
* Regional comparisons
* Product/category analysis
* Channel analysis
* Return monitoring
* Business reporting

---

## Analytical Workflow

### 1. Data Preparation

The dataset was reviewed and prepared for analysis by addressing:

* Missing values
* Date inconsistencies
* Naming inconsistencies
* Category variations
* Brand variations
* Regional naming variations
* Channel and outlet inconsistencies

SQL was used to standardize and prepare the analytical dataset.

---

### 2. Sales Performance Analysis

The analysis evaluates:

* Revenue trends
* Sales contribution
* Product performance
* Regional performance
* Channel performance
* Category performance

This helps identify where sales are concentrated and where performance gaps exist.

---

### 3. Profitability Analysis

Revenue and profit were analyzed together to understand:

* High-revenue segments
* High-profit segments
* Lower-profit areas
* Regional profitability
* Category profitability
* Channel profitability

This provides a more complete view of business performance.

---

### 4. Operational Performance Analysis

Operational patterns were evaluated using indicators such as:

* Product returns
* Return frequency
* Regional return patterns
* Channel return patterns
* Outlet-level return patterns
* Category-level return patterns

Returns are treated as an operational signal that may require further investigation.

---

## Key Performance Areas

### Revenue Performance

The project compares revenue across:

* Regions
* Categories
* Products
* Brands
* Channels
* Time periods

This helps identify the major contributors to sales.

---

### Profit Performance

Profitability analysis helps distinguish between:

* High-sales/high-profit areas
* High-sales/lower-profit areas
* Low-sales/high-margin opportunities
* Underperforming segments

This supports more informed resource allocation.

---

### Regional Performance

Regional comparisons are used to identify:

* Strong-performing markets
* Underperforming markets
* Revenue concentration
* Profit concentration
* Differences in return activity

---

### Product & Category Performance

Products and categories are compared based on:

* Sales
* Revenue
* Profit
* Returns
* Contribution to overall performance

This can help prioritize products requiring further commercial or operational attention.

---

### Channel Performance

Different sales channels are evaluated to understand:

* Revenue contribution
* Profit contribution
* Sales volume
* Return activity
* Relative performance

This provides a basis for channel-level performance monitoring.

---

## Key Insights

The analysis provides a structured view of performance differences across regions, products, categories, and channels.

Key observations include:

* Revenue and profit are not distributed equally across business segments.
* Some regions contribute substantially more to overall commercial performance.
* Product categories show different levels of sales and profitability.
* Return activity varies across products, categories, regions, and channels.
* Combining revenue, profit, and return indicators provides a more complete view of operational performance.

> Quantitative conclusions should be taken directly from the dataset and dashboard outputs.

---

## Business Recommendations

### 1. Prioritize High-Performing Regions

Identify regions with consistently strong revenue and profitability and evaluate opportunities for further growth.

### 2. Investigate Underperforming Areas

Use regional, category, and channel KPIs to identify segments requiring additional commercial analysis.

### 3. Monitor Return Patterns

Track return-heavy categories and channels to identify potential quality, fulfillment, or operational issues requiring investigation.

### 4. Balance Revenue With Profitability

Avoid evaluating performance using revenue alone. Profit contribution should be considered when prioritizing products, regions, and channels.

### 5. Strengthen Performance Monitoring

Use dashboard KPIs to regularly monitor changes in sales, profitability, regional contribution, and return activity.

---

## Dashboard

The Power BI dashboard provides an interactive performance-monitoring view covering:

* Revenue
* Profit
* Sales trends
* Regional performance
* Product/category performance
* Channel performance
* Return activity

The dashboard is designed to make performance patterns easier to identify and communicate.

---

## Repository Structure

```text
├── fmcg_clean.csv
├── rfm_fmcg.csv
├── fmcg_analyst.ipynb
├── fmcg_dashboard.pbix
├── Script.sql
└── README.md
```

---

## Skills Demonstrated

* SQL
* PostgreSQL
* Data Cleaning
* Data Validation
* Python
* Pandas
* NumPy
* Exploratory Data Analysis
* Data Visualization
* KPI Analysis
* Power BI
* Business Intelligence
* Performance Analysis
* Business Recommendations

---

## Outcome

This project demonstrates the ability to use **SQL, Python, and Power BI** to evaluate business performance from transactional data and convert analytical findings into practical performance-monitoring and improvement recommendations.
