use sakila;
-- ej. 1.1

SELECT * 
FROM film;

SELECT *
FROM sakila.film
as max_duration
ORDER BY length desc
limit 1;

-- CHICAGO NORTH

SELECT * 
FROM sakila.film 
as min_duration 
ORDER BY length asc 
limit 1;

-- ALIEN CENTER

-- ej 1.2. 

SELECT length from film;

SELECT 
ROUND(AVG(length)) AS 'media_duracion'
FROM sakila.film;

-- 115 minutos


-- 2.1.

SELECT * FROM rental;

SELECT *
FROM sakila.rental 
order by rental_date asc
limit 1;

-- 2.2

SELECT 
month(rental_date) as 'month',
day(rental_date) as 'day'
from rental
limit 20;

-- 3. 

SELECT 
SUM(isnull(rental_duration))
FROM sakila.film;

SELECT * 
FROM sakila.film
WHERE rental_duration IS NOT NULL AND rental_duration NOT IN('',' '); 

SELECT *
FROM sakila.film
ORDER BY rental_duration asc;

-- chall 2
-- 1.1

SELECT 
count(title) as 'numero_de_pelis'
FROM sakila.film;

-- 1.2

SELECT 
distinct rating from film;


SELECT
count(rating), rating
FROM film group by rating;

-- 1.3 
SELECT * FROM FILM;

SELECT
count(rating), rating
FROM film group by rating
order by count(rating) desc;

-- 2.1 

SELECT
round(avg(length), 2), rating
FROM film 
group by rating
order by AVG(length) desc;

-- 2.2 

SELECT *
FROM film
where length > 120;

SELECT rating
FROM film
group by rating
having avg(length) > 120











