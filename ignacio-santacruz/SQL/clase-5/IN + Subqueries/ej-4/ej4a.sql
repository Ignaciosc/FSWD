/* 4. Traer todos los géneros que no tengan series que se hayan estrenado a partir del
2010.
a. ¿Se puede obtener el mismo resultado sin utilizar subqueries?*/

select g.nombre, s.fecha_de_estreno
from genero g
	left join serie s on g.id = s.id_genero
where year(s.fecha_de_estreno) < 2009 or s.fecha_de_estreno is null