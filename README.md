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

### 💡 Sample SQL Queries

**Top 10 Best-Selling Products**

```sql
SELECT TOP 10 P.ProductName, SUM(OD.Quantity * OD.UnitPrice) AS TotalRevenue
FROM OrderDetails OD
JOIN Products P ON OD.ProductID = P.ProductID
GROUP BY P.ProductName
ORDER BY TotalRevenue DESC;
```

**Country-wise Revenue**

```sql
SELECT C.Country, SUM(O.TotalAmount) AS TotalSales
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
GROUP BY C.Country
ORDER BY TotalSales DESC;
```

**Monthly Sales Trend**

```sql
SELECT FORMAT(OrderDate, 'yyyy-MM') AS Month, SUM(TotalAmount) AS MonthlyRevenue
FROM Orders
GROUP BY FORMAT(OrderDate, 'yyyy-MM')
ORDER BY Month;
```

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

---

### 👨‍💻 Author

**Abhay Singh Chauhan**
📧 *[your email or LinkedIn link here]*
💼 Passionate about Data Analytics | SQL | Python | Business Intelligence

---

### 🏁 How to Use

1. Clone this repository

   ```bash
   git clone https://github.com/your-username/E-Commerce-Sales-Analysis.git
   ```
2. Open the project in **SQL Server Management Studio (SSMS 21)**
3. Import the provided `.csv` datasets into tables
4. Run the SQL scripts to explore and analyze data

