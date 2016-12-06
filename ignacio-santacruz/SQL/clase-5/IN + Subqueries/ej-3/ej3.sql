/* 3. Traer todos los géneros que tengan series que se hayan estrenado a partir del 2010.
a. Obtener lo mismo mediante una consulta que no contenga subqueries. */
select nombre
from genero
where id in (
	select id_genero
	from serie
	where year(fecha_de_estreno) > 2009)