-- list customers who have order atleast two books.
select o.customer_id ,count(o.Order_ID)as total_orders,c.name from orders o 
join customers c 
on c.customer_id=o.customer_id
group by o.Customer_ID,c.name
having count(order_id)>=2;