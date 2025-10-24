# Books-sales-analysis-projects
🧠 Project Overview

This project demonstrates the use of MySQL to explore, analyze, and generate insights from a Bookstore Database.
The database consists of three main tables:

Books – Contains information about each book, such as title, genre, author, price, publication year, and stock quantity.

Customers – Stores details about the bookstore’s customers, including their names, locations, and contact information.

Orders – Tracks each customer order, linking books to customers, along with order dates, quantities, and total amounts.

This project covers both basic and advanced SQL queries — designed to showcase proficiency in data analysis, joins, grouping, filtering, and aggregate functions.

🧾 Database Schema Overview

Table	Description

books	Book details such as ID, Title, Author, Genre, Price, Publication Year, Stock
customers	Customer details such as ID, Name, Country, City
orders	Order details such as Order ID, Customer ID, Book ID, Order Date, Quantity, Total Amount

🔍 Basic SQL Queries

#	Query Description	SQL Statement

1	Retrieve all books in the “Fiction” genre
ANS:SELECT * FROM books WHERE Genre = 'Fiction';
2	Find books published after the year 1950	
ANS:SELECT * FROM books WHERE Publication_Year > 1950;
3	List all customers from Canada	
ANS:SELECT * FROM customers WHERE Country = 'Canada';
4	Show orders placed in November 2023
ANS:SELECT * FROM orders WHERE MONTH(Order_Date) = 11 AND YEAR(Order_Date) = 2023;
5	Retrieve the total stock of books available	
ANS:SELECT SUM(Stock) AS Total_Stock FROM books;
6	Find the details of the most expensive book
ANS:SELECT * FROM books ORDER BY Price DESC LIMIT 1;
7	Show all customers who ordered more than 1 quantity of a book	
ANS:SELECT DISTINCT c.* FROM customers c JOIN orders o ON c.Customer_ID = o.Customer_ID WHERE o.Quantity > 1;
8	Retrieve all orders where the total amount exceeds $20	
ANS:SELECT * FROM orders WHERE Total_Amount > 20;
9	List all genres available in the books table	
ANS:SELECT DISTINCT Genre FROM books;
10	Find the book with the lowest stock
ANS:SELECT * FROM books ORDER BY Stock ASC LIMIT 1;
11	Calculate the total revenue generated from all orders
ANS:SELECT SUM(Total_Amount) AS Total_Revenue FROM orders;

🚀 Advanced SQL Queries

#	Query Description	SQL Statement

12	Retrieve the total number of books sold for each genre	
ANS:SELECT b.Genre, SUM(o.Quantity) AS Total_Sold FROM orders o JOIN books b ON o.Book_ID = b.Book_ID GROUP BY b.Genre;
13	Find the average price of books in the “Fantasy” genre	
ANS:SELECT AVG(Price) AS Avg_Fantasy_Price FROM books WHERE Genre = 'Fantasy';
14	List customers who have placed at least 2 orders	
ANS:SELECT c.Customer_ID, c.Name, COUNT(o.Order_ID) AS Orders_Placed FROM customers c JOIN orders o ON c.Customer_ID = o.Customer_ID GROUP BY c.Customer_ID, c.Name HAVING COUNT(o.Order_ID) >= 2;
15	Find the most frequently ordered book
ANS:SELECT b.Title, SUM(o.Quantity) AS Times_Ordered FROM orders o JOIN books b ON o.Book_ID = b.Book_ID GROUP BY b.Title ORDER BY Times_Ordered DESC LIMIT 1;
16	Show the top 3 most expensive books of the “Fantasy” genre
ANS:SELECT * FROM books WHERE Genre = 'Fantasy' ORDER BY Price DESC LIMIT 3;
17	Retrieve the total quantity of books sold by each author
ANS:SELECT b.Author, SUM(o.Quantity) AS Total_Sold FROM orders o JOIN books b ON o.Book_ID = b.Book_ID GROUP BY b.Author;
18	List the cities where customers who spent over $30 are located
ANS:SELECT DISTINCT c.City FROM customers c JOIN orders o ON c.Customer_ID = o.Customer_ID WHERE o.Total_Amount > 30;
19	Find the customer who spent the most on orders	
ANS:SELECT c.Name, SUM(o.Total_Amount) AS Total_Spent FROM customers c JOIN orders o ON c.Customer_ID = o.Customer_ID GROUP BY c.Name ORDER BY Total_Spent DESC LIMIT 1;
20	Calculate the stock remaining after fulfilling all orders
ANS:SELECT b.Title, (b.Stock - IFNULL(SUM(o.Quantity), 0)) AS Remaining_Stock FROM books b LEFT JOIN orders o ON b.Book_ID = o.Book_ID GROUP BY b.Title;
🧩 Skills Demonstrated

Database design and relationship mapping

Query optimization and logical joins

Aggregate and window functions

Data grouping and filtering using HAVING

Real-world business query formulation

🖥️ Tools Used

MySQL Workbench

SQL Server (for testing optional)

VS Code / GitHub for project documentation

🧑‍💻 Author

Reyan Shah
💼 WordPress & Coding Developer | Data Analyst (SQL, Power BI, Excel)
📧 Reyanshah450@gmail.com
