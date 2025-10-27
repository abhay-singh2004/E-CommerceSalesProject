## 🛍️ E-Commerce Sales Analysis using SQL Server

### 📄 Project Overview

This project demonstrates how **SQL Server Management Studio (SSMS 21)** can be used to design, manage, and analyze an **E-Commerce Sales Database**.
It focuses on extracting valuable business insights such as revenue trends, top-performing products, customer spending patterns, and payment analytics.

The project is ideal for learners and analysts who want to strengthen their SQL and data analysis skills with real-world scenarios.

---

### 🎯 Objectives

* Design a normalized **E-Commerce Database Schema**.
* Perform **data analysis using SQL queries** (Joins, Aggregations, Subqueries, CTEs, Views).
* Identify **sales trends, customer behavior, and product performance**.
* Practice **data modeling and relational database management**.

---

### 🧩 Database Schema Overview

| Table Name       | Description                               | Key Columns / Relationships                            |
| ---------------- | ----------------------------------------- | ------------------------------------------------------ |
| **Customers**    | Stores customer details and location info | `CustomerID (PK)`                                      |
| **Products**     | Contains product data by category & price | `ProductID (PK)`                                       |
| **Orders**       | Records customer orders                   | `OrderID (PK)`, `CustomerID (FK)`                      |
| **OrderDetails** | Line-item details of each order           | `OrderDetailID (PK)`, `OrderID (FK)`, `ProductID (FK)` |
| **Payments**     | Tracks payment info & transaction details | `PaymentID (PK)`, `OrderID (FK)`                       |

---

### 🗄️ Dataset Files (CSV)

All datasets are included in this repository:

```
Customers.csv  
Products.csv  
Orders.csv  
OrderDetails.csv  
Payments.csv
```

Each file contains **cleaned and realistic data** ready for import into SQL Server.

---

### ⚙️ SQL Concepts Covered

✅ **DDL Commands:** CREATE, ALTER, DROP
✅ **DML Commands:** SELECT, INSERT, UPDATE, DELETE
✅ **JOINS:** INNER, LEFT, RIGHT, FULL
✅ **GROUPING & AGGREGATION:** SUM, COUNT, AVG, MAX, MIN
✅ **CTEs & Subqueries:** For intermediate to advanced analysis
✅ **Views:** For creating reusable business reports

---

### 📈 Insights You Can Derive

* Top-performing **countries and products** by sales
* Most-used **payment methods**
* Month-over-month **sales growth**
* **Customer lifetime value** and purchasing frequency

---

### 🧠 Tools & Technologies

* **SQL Server Management Studio (SSMS 21)**
* **SQL (Structured Query Language)**
* **Microsoft Excel / CSV** (for dataset handling)
* **GitHub** (for version control and sharing)

---

### 📊 Project Outcome

This project successfully demonstrates:

* How to build and analyze a real-world relational database
* Strong SQL skills (joins, grouping, subqueries, analytical queries)
* Data-driven insights to support e-commerce business decisions




