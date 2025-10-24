-- find the most frequently ordered book
select o.book_id,count(o.order_id)as order_count,b.title from orders o
join books b on b.book_id=o.book_id
group by book_id
order by order_count desc
limit 5;