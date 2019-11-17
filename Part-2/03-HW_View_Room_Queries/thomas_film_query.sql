--inspect Film and Inventory tables

select * from film


select * from inventory 

-- Drop view if it exists
DROP VIEW TITLE_COUNT

-- Select # of copies of films 
CREATE VIEW title_count as
SELECT title,
	(SELECT 
	 COUNT(film_id) AS "Film Inventory"
	 FROM inventory
	 WHERE film.film_id = inventory.film_id)
FROM film

SELECT * FROM title_count

-- Select movies with exactly 7 copies

SELECT * FROM title_count
WHERE "Film Inventory" = 7



