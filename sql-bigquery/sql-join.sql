Source: https://www.w3resource.com/sql-exercises/sql-joins-exercises.php

Question 1
SELECT salesman.name AS Salesman, customer.cust_name, customer.city
FROM salesman INNER JOIN customer on salesman_id
WHERE salesman.city = customer.city

Question 2
