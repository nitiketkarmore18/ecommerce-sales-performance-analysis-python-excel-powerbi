# 📊 Ecommerce Sales Performance Dashboard

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)

## End-to-End Retail Analytics & Business Intelligence Project

---

# 🚀 Project Overview

This project focuses on analyzing ecommerce retail sales data to uncover actionable business insights related to sales performance, profitability, discount impact, customer segments, regional trends, and product-level performance.

The project demonstrates a complete end-to-end analytics workflow starting from SQL-based business querying and Python-driven exploratory data analysis (EDA), followed by interactive dashboard development and business intelligence reporting using Power BI.

The primary goal of this project was to transform raw transactional retail data into an interactive analytics solution capable of supporting data-driven business decision-making.

---

# 📌 Project Highlights

- Analyzed 9K+ ecommerce transaction records across sales, profit, discount, region, and customer segment data
- Processed $2.3M+ sales and $286K+ profit data using SQL, Python, Pandas, and Power BI
- Developed 6+ interactive visualizations, KPI dashboards, SQL business queries, and DAX measures for profitability analysis

---

# 🎯 Business Problem

Retail ecommerce businesses generate large volumes of transactional data across multiple categories, customer segments, and regions. Without proper analysis and visualization, businesses struggle to:

- Identify high-performing and low-performing product categories
- Understand the impact of discounts on profitability
- Detect loss-making products and sub-categories
- Analyze regional and segment-wise performance
- Track overall business profitability and sales trends

This project addresses these challenges by building an interactive business intelligence dashboard that enables analytical reporting and strategic insight generation.

---

# 📌 Business Questions Answered

| Business Question | Dashboard Solution |
|---|---|
| Which category generates the highest sales and profit? | Sales & Profit by Category |
| Which regions perform best? | Regional Sales Analysis |
| How do discounts affect profitability? | Discount vs Profit Analysis |
| Which sub-categories are loss-making? | Profit by Sub-Category |
| Which customer segments contribute most? | Segment-wise Sales Analysis |

---

# 📂 Dataset Information

## Dataset Overview

- Dataset Type: Retail Ecommerce Sales Data
- Total Records Analyzed: 9,000+
- Source: Superstore Dataset

## Features Included

- Sales
- Profit
- Discount
- Quantity
- Category
- Sub-Category
- Segment
- Region
- Ship Mode
- State
- City

---

# 🛠️ Tools & Technologies Used

| Tool / Technology | Purpose |
|---|---|
| SQL | Business Querying & Aggregation |
| MySQL Workbench | SQL Analysis Environment |
| Python | Data Cleaning & Analysis |
| Pandas | Data Manipulation |
| Google Colab | Exploratory Data Analysis |
| Power BI | Dashboard Development |
| DAX | KPI & Metric Calculations |
| Excel | Dataset Handling |

---

# 🔄 Project Workflow

```text
Raw Retail Dataset
        ↓
SQL Querying & Business Analysis
        ↓
Python Data Cleaning using Pandas
        ↓
Exploratory Data Analysis (EDA)
        ↓
Data Transformation & Validation
        ↓
Power BI Data Modeling
        ↓
Interactive Dashboard Development
        ↓
Business Insight Generation
```
---

#🧹 Data Cleaning & Preprocessing

- The dataset was cleaned and analyzed using Python in Google Colab.

- Key Preprocessing Steps
- Imported dataset using Pandas
- Checked data types and column consistency
- Verified missing values and duplicates
- Processed numerical and categorical fields
- Performed exploratory data analysis (EDA)
- Prepared cleaned dataset for Power BI reporting

---


# 🗄️ SQL Querying & Business Analysis

SQL was used to perform business-oriented querying, aggregation, profitability analysis, and regional sales evaluation before dashboard development.

- SQL Analysis Performed
- Executive KPI generation
- Category-wise sales and profit analysis
- Regional revenue contribution analysis
- Loss-making sub-category detection
- Discount impact analysis
- Customer segment performance analysis

Sample SQL Query

SELECT
    Category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_cleaned
GROUP BY Category
ORDER BY total_sales DESC;

# 📈 Exploratory Data Analysis (EDA)

EDA was performed to identify patterns, trends, and relationships in the dataset.

- Analysis Performed
- Category-wise sales analysis
- Profitability analysis
- Regional performance analysis
- Segment-wise customer analysis
- Discount impact analysis
- Sub-category performance evaluation

# 📊 Power BI Dashboard Features
KPI Cards

The dashboard includes the following business KPIs:

- Total Sales
- Total Profit
- Profit Margin %
- Average Discount
- Interactive Visualizations

Visualization	Purpose
Sales by Category	Compare category sales performance
Profit by Category	Evaluate category profitability
Sales by Region	Analyze regional trends
Sales by Segment	Evaluate customer segments
Profit by Sub-Category	Identify loss-making products
Discount vs Profit Scatter Plot	Analyze discount impact
Interactive Filters

The dashboard includes slicers for:

- Category
- Region
- Segment

This enables dynamic and interactive business analysis.

# 🧠 DAX Measures Implemented
Profit Margin %

The following DAX measure was implemented to evaluate overall business profitability:

Profit Margin % =
DIVIDE(SUM(superstore_final[Profit]),
SUM(superstore_final[Sales]))

- Business Purpose

This KPI helps measure how efficiently revenue is converted into profit.

# 🔍 Key Business Insights

1️⃣ Technology Category Generates Highest Revenue

- Technology category produced the highest sales and profit
Indicates strong customer demand and better profit margins

- Business Impact

- The business can prioritize technology-focused products to maximize profitability.

2️⃣ Furniture Category Shows Lower Profitability

- Furniture generated high sales but lower profit margins
Excessive discounting reduced profitability

- Business Impact

- Discount optimization strategies should be implemented to improve margins.

3️⃣ Higher Discounts Reduce Profitability

- Scatter plot analysis showed a negative relationship between discounts and profit

- Business Impact

- Aggressive discounting policies should be controlled to prevent profit erosion.

4️⃣ Certain Sub-Categories are Loss-Making

- Some sub-categories consistently generated negative profit

- Business Impact

- Pricing strategies and supplier costs should be reevaluated.

# 💡 Business Recommendations

Business Problem	Recommendation
High discounts reducing profit	Optimize discount strategy
Loss-making sub-categories	Reevaluate pricing and supplier costs
Uneven regional performance	Improve regional marketing campaigns
Low Furniture profitability	Reduce excessive discounting

# ✨ Key Project Features

- Interactive Power BI dashboard with KPI monitoring
- SQL-based business analysis and profitability evaluation
- Python-driven exploratory data analysis (EDA)
- DAX-based KPI calculations and profit margin analysis
- Regional, category, and segment-level performance insights
- Business recommendations based on data-driven findings

# 📌 Dashboard Preview

<img width="1147" height="734" alt="Dashboard Overview" src="https://github.com/user-attachments/assets/3f9d4732-a2e8-4073-b532-bd53ed5b370a" />

# 📈 Project Metrics

Metric	Value
Total Sales	$2.3M+
Total Profit	$286K+
Profit Margin	12.47%
Records Processed	9K+
Visualizations Created	6+
Interactive Slicers	3

# 🏆 Skills Demonstrated

This project demonstrates practical experience in:

- SQL Querying & Aggregation
- Data Cleaning
- Exploratory Data Analysis
- Business Intelligence
- Dashboard Development
- DAX Calculations
- Data Visualization
- Business Insight Generation
- Analytical Thinking
- Problem Solving
- Business Reporting

# ⚡ Challenges Faced

During the project, the following challenges were encountered:

- Dataset formatting inconsistencies
- KPI calculation accuracy
- Dashboard layout optimization
- Proper visualization selection
- DAX formatting and business metric calculations

These challenges were resolved through iterative analysis and dashboard refinement.

# 🚀 Future Improvements

Potential future enhancements include:

- Time-series sales forecasting
- Predictive analytics models
- Customer retention analysis
- Drill-through reporting
- Advanced DAX measures
- Real-time data integration

# 📁 Repository Structure
```text
Ecommerce-Sales-Performance-Dashboard/
│
├── Dataset/
│   ├── SampleSuperstore.csv
│   ├── superstore_cleaned.csv
│   └── superstore_cleaned_eda.csv
│
├── Notebook/
│   └── ecommerce_sales_data.ipynb
│
├── SQL/
│   └── ecommerce_sales_queries.sql
│
├── Dashboard/
│   └── ecommerce_sales_dashboard.pbix
│
├── Images/
│   └── dashboard_overview.png
│
├── Report/
│   └── eda_ecommerce_sales_report.pdf
│
└── README.md
```
---

# 📌 Project Outcomes

The project successfully transformed raw ecommerce transaction data into an interactive business intelligence solution capable of:

- Monitoring sales performance
- Evaluating profitability trends
- Identifying discount-related losses
- Detecting high-performing regions and categories
- Supporting data-driven business decisions

# 🎯 Project Impact

This project improved visibility into ecommerce sales and profitability trends through interactive reporting and business intelligence visualization.

Key Impact Areas
- Enabled category-wise profitability analysis
- Identified discount-driven loss areas
- Improved regional and segment-level analysis
- Supported strategic business recommendations
- Demonstrated end-to-end analytics workflow implementation

# 👨‍💻 Author
Nitiket Karmore

Data Analyst | SQL | Power BI | Python | Business Intelligence

Connect With Me
- LinkedIn: https://www.linkedin.com/in/nitiket-karmore-3602b22b6/
- Portfolio: https://nitiket-karmore-saz8dqw.gamma.site/

# ⭐ Final Note

- This project demonstrates the complete lifecycle of a real-world analytics workflow — from SQL-based querying and raw data preprocessing to exploratory analysis, dashboard development, and business intelligence reporting.
