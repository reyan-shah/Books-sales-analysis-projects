-- retrieve the number of books sold for each genre
select b.Genre,sum(o.quantity) as total_books_sold
from orders o join books b
on b.Book_ID=o.Book_ID
group by genre;