Week 5 - Monday Questions

-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';



-- 2. How many payments were made between $3.99 and $5.99?
SELECT amount
FROM payment
WHERE amount BETWEEN '3.99' and '5.99';



-- 3. What film does the store have the most of? (search in inventory)
SELECT *
FROM film_id


SELECT film_id
FROM inventory
GROUP BY film_id
ORDER BY COUNT(inventory) DESC

LIMIT 8;



-- 4. How many customers have the last name ‘William’?
SELECT last_name
FROM customer
WHERE last_name = 'William';




-- 5. What store employee (get the id) sold the most rentals?
SELECT *
FROM rental

SELECT SUM (staff_id)
FROM rental
GROUP BY staff_id



-- 6. How many different district names are there?
SELECT *
FROM address

SELECT district
FROM address
GROUP BY district;



-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT *
FROM film_actor;

SELECT film_id
FROM film_actor
WHERE film_id = '508';



-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT *
FROM customer


SELECT last_name, store_id
FROM  customer
WHERE last_name LIKE '%es';


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT *
FROM payment

SELECT payment_amount
FROM payment
WHERE ids BETWEEN 380 and 430
GROUP BY payment_amounts
Having COUNT(amount) > 250
ORDER BY payment_amount ASC;




-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
SELECT *
FROM film

SELECT COUNT (rating)
FROM film
GROUP BY rating;