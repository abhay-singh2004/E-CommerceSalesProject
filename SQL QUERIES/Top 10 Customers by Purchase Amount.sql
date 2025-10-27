--Top 10 Customers by Purchase Amount
use ecommerce_project
select 
t1.name as Name  ,
t1.country as Country ,
round (sum (t2.TotalAmount),2)as Total_Purchase_Amount
from Customers t1
join Orders t2
on t1.CustomerID=t2.CustomerID 
group by t1.CustomerID,name ,country 
order by Total_Purchase_Amount desc 
offset 0 rows fetch next 10 rows only 

