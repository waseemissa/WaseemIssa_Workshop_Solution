/* Return the ﬁrst and last names of actors who played in a ﬁlm involving a “Crocodile” and a “Shark”, along with the release year of the movie, sorted by the actors’ last names */

SELECT a.first_name, a.last_name, f.title, f.release_year 
FROM film f, actor a, film_actor fa 
WHERE a.actor_id = fa.actor_id 
AND fa.film_id = f.film_id  
AND (f.description LIKE '%Crocodile%' OR f.description LIKE '%Shark%') 
ORDER BY a.last_name;