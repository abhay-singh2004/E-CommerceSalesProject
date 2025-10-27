-- Monthly Sales Trend
use ecommerce_project
 select 
 year (OrderDate) as Year ,
 month (OrderDate) as Month,
 round (sum (TotalAmount),2)as Total_Month_sale 
 from orders 
group by  year (OrderDate) ,month (OrderDate)
order by Year ,Month
