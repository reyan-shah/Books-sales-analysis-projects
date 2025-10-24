-- list all genres available in books table
select count(*)as books,genre from books
group by genre;