# 📊 Olist E-Commerce Sales Dashboard

## 📌 Project Overview

This project presents an interactive Power BI dashboard built using the Olist Brazilian E-Commerce dataset. The dashboard provides comprehensive insights into sales performance, customer behavior, product category trends, payment preferences, geographic revenue distribution, and delivery performance.

The objective of this project is to transform raw e-commerce data into actionable business insights using SQL, Power BI, DAX, and data modeling techniques.

---

# 🎯 Business Objectives

* Analyze overall sales performance
* Monitor customer and order growth
* Identify top-performing product categories
* Understand customer payment preferences
* Evaluate delivery efficiency
* Analyze revenue distribution across states
* Support data-driven business decision-making

---

# 🛠️ Tools & Technologies Used

* Power BI
* MySQL
* SQL
* DAX (Data Analysis Expressions)
* Power Query
* Data Modeling
* Data Visualization
* Business Intelligence

---

# 📂 Dataset Information

The project uses the Olist Brazilian E-Commerce dataset, which contains information related to:

* Customers
* Orders
* Order Items
* Products
* Sellers
* Payments
* Reviews
* Geolocation Data

### Dataset Files

* olist_customers_dataset.csv
* olist_orders_dataset.csv
* olist_order_items_dataset.csv
* olist_order_payments_dataset.csv
* olist_order_reviews_dataset.csv
* olist_products_dataset.csv
* olist_sellers_dataset.csv
* olist_geolocation_dataset.csv
* product_category_name_translation.csv

---

# 🗄️ SQL Analysis

Before building the Power BI dashboard, SQL was used to explore, validate, and analyze the Olist E-Commerce dataset.

### Business Questions Solved Using SQL

#### Sales Analysis

* Total Revenue Generated
* Total Orders Analysis
* Distinct Customer Analysis
* Monthly Revenue Trend
* Monthly Order Trend

#### Customer Analysis

* Orders by City
* Orders by State
* Top Customers by Spending

#### Revenue Analysis

* City-wise Revenue Analysis
* State-wise Revenue Analysis
* Product-wise Revenue Analysis

#### Product Analysis

* Top 10 Selling Product Categories
* Revenue Contribution by Product Category

### SQL Concepts Used

* SELECT Statements
* WHERE Clauses
* Aggregate Functions (SUM, COUNT, ROUND)
* GROUP BY
* ORDER BY
* INNER JOIN
* LIMIT
* DATE_FORMAT()
* Multi-Table Analysis

### Key SQL Insights

* Total Revenue: 16.01M
* Total Orders: 99,441
* Distinct Customers: 96,096
* São Paulo generated the highest number of orders and revenue
* Beauty & Health emerged as a top-performing product category
* Credit Card was the most preferred payment method

The complete SQL queries used for analysis are available in:

```text
sql/Olist Dataset Project.sql
```

---

# 🗂️ Data Modeling

A relational data model was created in Power BI by connecting multiple tables.

### Tables Connected

* Customers
* Orders
* Order Items
* Products
* Sellers
* Payments
* Reviews

### Key Relationships

* customer_id
* order_id
* product_id
* seller_id

This data model enables accurate KPI calculations and cross-table analysis.

---

# 📈 Dashboard Features

## KPI Cards

* Total Revenue
* Total Orders
* Total Customers
* Average Review Score

## Visualizations

### Sales Analysis

* Monthly Revenue Trend
* Revenue by State
* Revenue of Top Five States

### Product Analysis

* Top 10 Product Categories by Revenue

### Payment Analysis

* Revenue by Payment Method

### Delivery Analysis

* On-Time vs Delayed Deliveries

### Customer Analysis

* Customer Purchase Trends

---

# 🎛️ Interactive Filters

The dashboard includes interactive slicers for:

* Year
* Weekday vs Weekend

These filters allow users to dynamically explore the data.

---

# 📊 Key Business Insights

## Sales Performance

* Total Revenue: 13.59M
* Total Orders: 96K
* Total Customers: 99K

## Customer Experience

* Average Review Score: 4.09 / 5
* On-Time Delivery Rate: 91.89%

## Revenue Insights

* São Paulo (SP) generated the highest revenue
* Credit Card is the most preferred payment method
* Beauty & Health is the top-performing product category

## Delivery Insights

* Majority of orders were delivered on time
* Better delivery performance contributed to higher customer satisfaction

---

# 📈 DAX Measures Created

The following DAX measures were used to build KPIs and business metrics:

* Total Revenue
* Total Orders
* Total Customers
* Average Review Score
* On-Time Delivery Percentage
* Delayed Delivery Percentage
* Revenue by Category
* Revenue by State

---

# 🚀 Skills Demonstrated

* Data Cleaning
* Data Transformation
* SQL Querying
* Data Modeling
* DAX Calculations
* KPI Development
* Dashboard Design
* Business Intelligence Reporting
* Data Storytelling
* Analytical Thinking
* Problem Solving

---

# 📸 Dashboard Preview

### Olist Sales Dashboard

![Olist_Sales_Dashboard](dashboard_screenshot.png)

---

# 📁 Project Structure

```text
olist-sales-dashboard/
│
├── data/
│   ├── olist_customers_dataset.csv
│   ├── olist_orders_dataset.csv
│   ├── olist_order_items_dataset.csv
│   ├── olist_order_payments_dataset.csv
│   ├── olist_order_reviews_dataset.csv
│   ├── olist_products_dataset.csv
│   ├── olist_sellers_dataset.csv
│   ├── olist_geolocation_dataset.csv
│   └── product_category_name_translation.csv
│
├── dashboard/
│   ├── Olist_Sales_Dashboard.pbix
│   └── dashboard_screenshot.png
│
├── sql/
│   └── Olist Dataset Project.sql
│
└── README.md
```

---

# 👨‍💻 Author

## Nikhil Jangir

EDI Analyst | Aspiring Data Analyst

### Connect With Me

🔗 LinkedIn:
https://www.linkedin.com/in/nikhil-jangir-6485bb311

🔗 GitHub:
https://github.com/Nikhil162002

---

# ⭐ Project Outcome

This project demonstrates an end-to-end Business Intelligence workflow, starting from SQL-based data analysis to Power BI dashboard development. The dashboard enables stakeholders to monitor sales performance, customer behavior, delivery efficiency, and revenue trends through interactive visualizations and KPIs.

---

## 📬 Feedback

Feedback, suggestions, and collaboration opportunities are always welcome.

If you found this project useful, consider giving it a ⭐ on GitHub.
