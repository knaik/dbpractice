Customers
customer_id	first_name	last_name	age	country
1	John	Doe	31	USA
2	Robert	Luna	22	USA
3	David	Robinson	22	UK
4	John	Reinhardt	25	UK
5	Betty	Doe	28	UAE
Orders
order_id	item	amount	customer_id
1	Keyboard	400	4
2	Mouse	300	4
3	Monitor	12000	3
4	Keyboard	400	1
5	Mousepad	250	2
Shippings
shipping_id	status	customer
1	Pending	2
2	Pending	4
3	Delivered	3
4	Pending	5
5	Delivered	1

-- Online SQL Editor to Run SQL Online.
-- Use the editor to create new tables, insert data and all other SQL operations.
  
SELECT first_name, SUBSTRING(last_name, 1, 1) AS last_initial, item
FROM Customers
LEFT JOIN Orders
ON Orders.customer_id = Customers.customer_id
WHERE item IS NOT NULL
;

-- Online SQL Editor to Run SQL Online.
-- Use the editor to create new tables, insert data and all other SQL operations.

SELECT first_name as Name, last_initial as Last, Count(first_name)
FROM (
SELECT first_name, SUBSTRING(last_name, 1, 1) AS last_initial, item
FROM Customers
LEFT JOIN Orders
ON Orders.customer_id = Customers.customer_id
WHERE item IS NOT NULL
 )
 GROUP BY last_initial
;
