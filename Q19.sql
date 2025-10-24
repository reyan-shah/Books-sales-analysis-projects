-- find the customers who spend most on orders.
select o.customer_id,sum(o.total_amount)as 
spend_amount,c.name from orders o join
customers c on c.customer_id=o.customer_id
group by o.customer_id
order by spend_amount desc
limit 10;
