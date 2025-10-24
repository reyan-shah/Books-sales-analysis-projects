-- show order placed in november 2023
select * from orders
where year(order_date) = 2023
and month(order_date)=11;