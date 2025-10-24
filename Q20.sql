-- calculate the remaning stock after fulfilling orders 
select b.stock,b.book_id,b.Title,sum(o.Quantity)as total_delivered,
 b.stock -sum(o.Quantity)as remaning_stock
 from 
books b left join orders o
on b.Book_ID=o.Book_ID
group by b.book_id;
