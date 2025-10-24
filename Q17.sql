-- retrieve the total number of books sold by each author
select b.author,count(o.quantity)as total_quantity
from orders o join books b 
on b.Book_ID=o.Book_ID
group by b.author
order by total_quantity desc;