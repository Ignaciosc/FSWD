/*. Utilizando INNER JOIN traer todos los títulos de películas junto con sus géneros.
a. Modificar la consulta anterior con un LEFT JOIN
b. Modificar la consulta anterior con un RIGHT JOIN
c. ¿Qué diferencia hubo entre cada una de las consultas?*/

select p.titulo, g.nombre
from pelicula as p
	left join genero as g on p.id_genero = g.id