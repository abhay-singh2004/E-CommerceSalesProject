-- Customer Retention (Repeat Buyers)
 use ecommerce_project 
 select 
 t1.Name ,
 count (t2.OrderID) as Order_count 
 from Customers t1 
 join orders t2 
 on t1.CustomerID = t2.CustomerID 
 group by t1.CustomerID, t1.Name 
 having count (t2.OrderID) >1
 order by Order_count desc 
