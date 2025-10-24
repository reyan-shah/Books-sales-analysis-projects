-- list the city where customers who spent over 30$ are located
select distinct c.city,o.Total_Amount
 from orders o join customers c 
 on c.customer_id=o.customer_id
 where
Total_Amount>=30;