# NorthWind-Queries
# 🛒 NorthWind Dataset Analysis with SQL Workbench

Welcome to the **NorthWind Dataset Analysis** project! In this project, I analyzed the **NorthWind** dataset using **SQL Workbench** to extract valuable insights about the sales performance, customers, products, and regions. The NorthWind database is a classic dataset used for learning and includes tables related to orders, customers, suppliers, and more.
![image](https://github.com/user-attachments/assets/c75deb34-8afa-4200-820d-3bb71ab1544e)

## 📊 Project Overview

The **NorthWind** dataset includes several tables that store information about:

- **Customers** 👥
- **Orders** 📦
- **Products** 🏷️
- **Suppliers** 🏢
- **Shippers** 🚚
- **Employees** 👨‍💼👩‍💼

The goal of this analysis was to query the database using SQL to explore relationships between these entities, summarize key metrics, and answer business questions.

## 🛠️ Tools and Techniques Used

### SQL Workbench Features Utilized:
- **SQL Queries** 📝: Wrote SQL queries to extract and filter data based on specific conditions, such as customer sales or product performance.
- **Joins** 🔗: Used various types of SQL joins (INNER JOIN, LEFT JOIN) to combine data from multiple tables and gain a deeper understanding of the relationships between them.
- **Aggregation Functions** 📊: Used aggregation functions like `SUM()`, `AVG()`, `COUNT()` to summarize data such as total sales and average order value.
- **Group By** 🧑‍🤝‍🧑: Grouped results by categories like region, product, or employee to identify trends and patterns.

### Key Insights & Analysis:
- **Total Sales by Region** 🌍: Analyzed the total sales for each region and identified the highest-performing regions.
- **Product Sales Performance** 🏷️: Evaluated which products contributed the most to the sales revenue.
- **Customer Order Frequency** 👥📦: Determined how often customers placed orders and what their average order values were.
- **Sales by Employee** 👨‍💼👩‍💼: Identified the top-performing employees based on their total sales.
- **Supplier Contributions** 🚚🏢: Analyzed which suppliers provided the most products for the sales.

## 🖼️ Project Visuals

Here are some SQL queries from the project:

-- returns all fields from categories
select *
from categories;

select *
from Customers;

-- select all data in columns for customername, city and country 
select CustomerName, City, Country
from Customers;

## 🚀 How to Use

1. Clone this repository to your local machine:
    ```bash
    git clone https://github.com/yourusername/NorthWind-Analysis.git
    ```

2. Open the SQL scripts in **SQL Workbench** or any SQL-compatible tool.

3. Execute the SQL queries to explore the dataset and get the insights.

4. Customize and modify the queries to explore additional insights or conduct your own analysis.

## 📈 Conclusion

This project demonstrates how SQL can be used to analyze and explore a real-world dataset. By writing complex SQL queries, I was able to identify key insights such as total sales by region, product performance, and top customers. These insights can be helpful for decision-making and business strategy.

## 💬 Feedback & Contributions
ChatGPT
Feel free to open issues or submit pull requests if you have any suggestions, improvements, or feedback. Contributions are welcome!

---

Thank you for checking out the **NorthWind Dataset Analysis** project! 🚀📊
