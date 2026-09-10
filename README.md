# FMCG Sales Performance Optimization & Customer RFM Segmentation

An end-to-end data analytics project using **SQL**, **Python**, and **Power BI** to uncover key drivers of revenue, profitability, and customer behavior within a Fast-Moving Consumer Goods (FMCG) dataset.

---

## 📌 Project Overview
This project analyzes transactional data from an FMCG company spanning from late 2023 to mid-2026. The objective is to identify operational inefficiencies, detect hidden profitability patterns, and segment customers to provide data-driven business decisions focused on **increasing total profit, driving revenue growth, and minimizing product returns**.

The project follows the **CRISP-DM (Cross-Industry Standard Process for Data Mining)** methodology to ensure a structured, business-oriented analytical approach.

---

## 🛠️ Tech Stack & Workflow

- **Data Extraction & Cleaning:** SQL (PostgreSQL) — Used for initial data assessment, schema modifications, and formatting normalization.
- **Exploratory Data Analysis (EDA):** Python (Pandas, NumPy, Seaborn, Matplotlib) — Used for statistical summaries, outlier detection, profit-revenue calculations, and customer segmentation modeling.
- **Data Storytelling & Visualization:** Power BI — Used to design an interactive executive dashboard for stakeholder reporting.

---

## 📊 Business Problem & Objectives

### Business Problem
The company experiences uneven revenue growth and varying profit margins across its operations. While overall sales volumes are substantial, certain segments suffer from profit leakage and inefficiencies. Additionally, a notable volume of product returns poses a challenge, leading to unnecessary operational costs and lost revenue.

### Objectives
1. **Maximize Profit & Revenue:** Identify regions, channels, and product categories that contribute the highest profit and revenue, as well as those that are underperforming.
2. **Minimize Product Returns:** Deep-dive into transactional returns to pinpoint the root causes (by product category, brand, channel, and outlet type) and reduce the return rate.
3. **Customer Value Segmentation:** Apply RFM (Recency, Frequency, Monetary) Segmentation to build targeted customer retention and marketing action plans.

---

## 🔍 Key Insights & Data Discoveries

### 1. Profit & Revenue Performance Analysis
* **Steady Growth:** Financial performance shows a positive upward trend from year to year, with profit peaking significantly toward the end of the period.
* **Geographical Performance:** Certain cities or regions contribute the largest chunk of revenue, while others require advanced operational or marketing evaluation due to their gap against target sales.

### 2. Operational Efficiency & Risk Management (Returns Analysis)
* **Monthly/Seasonal Trends:** Based on the transaction analysis, there is a seasonal volatility where product returns significantly decline in certain months (e.g., June to August) but spike aggressively afterward.
* **Product & Channel Vulnerability:** Particular categories (such as Personal Care or Household) and sales channels show higher return frequencies, presenting a critical risk to overall profitability.

### 3. Customer Value Segmentation (RFM Analysis)
* **High-Value Segments:** Identified clear boundaries for high-performing segments like **Loyal Customers** who generate the most stable revenue.
* **The "At Risk" Red Flag:** A key finding from the modeling process is that **the "At Risk" customer group constitutes the largest segment in the database**. This indicates a critical breakdown in customer retention; while the business successfully attracts new buyers, it struggles to keep them engaged over time, resulting in high churn rates.

---

## 💻 Customer Segmentation Implementation

The customer base classification was processed in Python using custom business logic based on Recency, Frequency, and Monetary metrics:

```python
def segment(df):
    if df['Customer_Age'] >= 18 and df['Customer_Age'] <= 25:
        # Custom logic mapping or RFM categorization
        pass
    
    # Logic implementation for customer classification
    if row['rfm_score'] == '555':
        return 'Champion'
    elif row['r_score'] >= 4 and row['f_score'] >= 4:
        return 'Loyal Customer'
    elif row['r_score'] >= 4:
        return 'Recent Customer'
    elif row['r_score'] <= 2:
        return 'At Risk'
    else:
        return 'Others'

rfm['segment'] = rfm.apply(segment, axis=1)
```

## 💡 Strategic Action Recommendations
Based on the dataset findings and dashboard trends, the following data-driven actions are recommended:

1. Profit Allocation: Channel resource deployment and supply chain stock towards high-margin regions (such as Yogyakarta and Bandung) to optimize revenue returns, while restructuring local pricing and sales strategies in underperforming urban hubs.

2. Systemic Supply Chain Audit: Initiate an immediate quality control and operational check for the heavily returned Food category across all sales channels. Investigate transit conditions and strict acceptance parameters—especially within Modern Trade (MT) outlets—to lower the product return rates.

3. Targeted Win-Back Campaigns: Deploy aggressive, automated win-back marketing efforts and personalized incentives specifically aimed at the massive At Risk segment. Prioritize re-engaging historical high-monetary accounts within this tier to improve retention rates cost-effectively.

## 📊 Dashboard Preview
<img width="1810" height="1032" alt="Screenshot 2026-06-25 235635" src="https://github.com/user-attachments/assets/449e99e8-6ee0-4a83-82ce-d7f35e34814f" />


## 📂 Repository Structure

├── dataset FMCG.xlsx         # Raw data source

├── fmcg_clean.csv            # Processed dataset after SQL cleaning

├── fmcg_analyst.ipynb        # Jupyter Notebook for EDA & RFM Analysis

├── fmcg_dashboard.pbix       # Power BI Dashboard file

└── README.md                 # Project documentation
