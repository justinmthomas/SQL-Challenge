DROP VIEW all_parties

-- Create all parties view with first name and last name of actors, staff, and customers from all three tables
CREATE VIEW all_parties AS
SELECT first_name,last_name, 'actor' as origin_table 
FROM actor
UNION
SELECT first_name, last_name, 'staff' as origin_table 
FROM staff
UNION
SELECT first_name, last_name, 'customer' as origin_table 
FROM customer;

--show view all_parties
SELECT *
FROM all_parties;

--Select and run Union on all customers who live in London


SELECT  * 
FROM
	(SELECT id, city
	 FROM customer_list
	 UNION
	 SELECT customer_id, first_name
	 FROM customer) as London_Customer
where London_Customer.city='London';

-- Use UNION ALL on both tables all IDs to see if they contain same customers

select customer_id 
FROM customer
UNION 
SELECT id
from customer_list;

select customer_id 
FROM customer
UNION ALL 
SELECT id
from customer_list;


