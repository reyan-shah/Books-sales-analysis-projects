-- show the top 3 most expensive books of fantasy genre
select * from books 
where genre="fantasy"
order by price desc
limit 4;