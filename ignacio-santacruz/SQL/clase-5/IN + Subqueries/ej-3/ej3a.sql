/* 3. Traer todos los géneros que tengan series que se hayan estrenado a partir del 2010.
a. Obtener lo mismo mediante una consulta que no contenga subqueries. */

select g.nombre, g.fecha_de_creacion
from genero g
	inner join serie s on g.id = s.id_genero
where year(s.fecha_de_estreno) > 2009