-- Most Profitable Product Categories 
 use ecommerce_project
 select 
 Category,
 round (sum (t1.UnitPrice),2) as Total_Revenue
 from OrderDetails t1 
 join Products t2 
 on t1.ProductID= t2.ProductID 
 group by Category 
 order by Total_Revenue desc 