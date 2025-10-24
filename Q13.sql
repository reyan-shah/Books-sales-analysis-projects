-- find the average price of books in fantasy genre.
select avg(price) as average_price
from books where 
genre="fantasy";