/* Find the names (ﬁrst and last) of all the actors and costumers whose ﬁrst name is the same as
the ﬁrst name of the actor with ID 8. Do not return the actor with ID 8 himself.
Note that you cannot use the name of the actor with ID 8 as a constant (only the ID).
There is more than one way to solve this question, but you need to provide only one solution. */

SELECT DISTINCT a.first_name, a.last_name, c.first_name, c.last_name
FROM actor a, customer c 
WHERE a.actor_id != 8 AND a.first_name = (SELECT first_name FROM actor WHERE actor_id = 8) AND c.first_name = (SELECT first_name FROM actor WHERE actor_id = 8);