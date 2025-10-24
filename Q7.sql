-- show all customers who ordered more than one quantity of books.
select distinct Customer_ID from orders
where quantity>1;