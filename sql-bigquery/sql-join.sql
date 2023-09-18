Source: https://www.w3resource.com/sql-exercises/sql-joins-exercises.php

Question 1
SELECT salesman.name AS Salesman, customer.cust_name, customer.city
FROM salesman INNER JOIN customer ON salesman.salesman_id = customer.salesman_id
WHERE salesman.city = customer.city

Question 2
SELECT orders.ord_no, orders.purch_amt, customer.cust_name, customer.city
FROM orders INNER JOIN customer ON orders.customer_id = customer.customer_id
WHERE orders.purch_amt BETWEEN 500 AND 2000

Question 3
SELECT customer.cust_name AS Customer Name, customer.city AS city, salesman.name AS Salesman, salesman.commission
FROM customer INNER JOIN salesman ON customer.salesman_id = salesman.salesman_id

Question 4
SELECT customer.cust_name AS Customer Name, customer.city AS customer city, salesman.name AS Salesman, salesman.commission
FROM customer INNER JOIN salesman ON customer.salesman_id = salesman.salesman_id
WHERE salesman.commission > 0.12

Question 5
SELECT customer.cust_name AS Customer Name, customer.city AS customer city, salesman.name AS Salesman, salesman.city AS salesman city, salesman.commission
FROM customer INNER JOIN salesman ON customer.salesman_id = salesman.salesman_id
WHERE (salesman.city NOT IN customer.city) AND (customer.salesman_id = salesman.salesman_id)

Question 6
SELECT orders.ord_no, orders.ord_date, orders.purch_amt, customer.cust_name AS Customer Name, customer.grade, salesman.name AS Salesman, salesman.commission
FROM orders INNER JOIN customer ON orders.customer_id = customer.customer_id INNER JOIN salesman ON orders.salesman_id = salesman.salesman_id

Question 7






