ALTER TABLE orders
ADD FOREIGN KEY (Customer_id) REFERENCES customers(Customer_id),
ADD FOREIGN KEY (Book_id) REFERENCES books(Book_id);
DELETE FROM orders
WHERE Book_ID NOT IN (SELECT Book_ID FROM books)
   OR Customer_ID NOT IN (SELECT Customer_ID FROM customers);
