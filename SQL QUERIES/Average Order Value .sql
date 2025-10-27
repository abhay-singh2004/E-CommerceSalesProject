-- Average Order Value
 use ecommerce_project
SELECT
ROUND(SUM(TotalAmount) * 1.0 / COUNT(OrderID), 2) AS AvgOrderValue
FROM Orders 