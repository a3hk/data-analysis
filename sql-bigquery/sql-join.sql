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
SELECT * 
FROM orders NATURAL JOIN customer NATURAL JOIN salesman

Question 8
SELECT customer.cust_name AS customer name, customer.cust_city AS customer city, customer.grade, salesman.name AS salesman, salesman.city AS salesman city
FROM customer INNER JOIN salesman ON customer.salesman_id = salesman.salesman_id
ORDER BY customer.customer_id

Question 9
SELECT customer.cust_name AS customer name, customer.cust_city AS customer city, customer.grade, salesman.name AS salesman, salesman.city AS salesman city
FROM customer INNER JOIN salesman ON customer.salesman_id = salesman.salesman_id
WHERE customer.grade < 300
ORDER BY customer.customer_id  

Question 10
SELECT customer.cust_name, customer.city, orders.ord_no, orders.ord_date, orders.purch_amt
FROM customer LEFT JOIN orders on customer.customer_id = orders.customer_id
ORDER BY orders.ord_date



