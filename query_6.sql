/* Find all the ﬁlm categories in which there are between 55 and 65 ﬁlms. Return the names of these categories and the number of ﬁlms per category, sorted by the number of ﬁlms. If there are no categories between 55 and 65, return the highest available counts. */

SELECT c.name, COUNT(fc.film_id) as number_of_films 
FROM category c, film_category fc 
WHERE c.category_id = fc.category_id 
GROUP BY c.name 
HAVING number_of_films > 55 AND number_of_films <65;
SELECT c.name, COUNT(fc.film_id) as number_of_films 
FROM category c, film_category fc 
WHERE c.category_id = fc.category_id 
GROUP BY c.name 
HAVING number_of_films < 55 OR number_of_films >65 
ORDER BY number_of_films DESC;