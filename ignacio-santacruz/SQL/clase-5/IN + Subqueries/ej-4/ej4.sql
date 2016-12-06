/* 4. Traer todos los géneros que no tengan series que se hayan estrenado a partir del
2010.
a. ¿Se puede obtener el mismo resultado sin utilizar subqueries?*/
select nombre
from genero
where id not in (
	select id_genero
	from serie
	where year(fecha_de_estreno) > 2009)