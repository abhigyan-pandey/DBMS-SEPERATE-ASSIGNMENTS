/*SELECT * FROM film  ;
SELECT * FROM film_actor  ;
SELECT * FROM film_category  ;
SELECT * FROM film_text  ;
SELECT * FROM film;*/

SELECT film.film_id , film.title ,film.rating
FROM film INNER JOIN film_category ON film.film_id = film_category.category_id
INNER JOIN category on film_category.category_id = category.category_id 
WHERE category.name='comedy' AND film.rating = 'PG-13' ;