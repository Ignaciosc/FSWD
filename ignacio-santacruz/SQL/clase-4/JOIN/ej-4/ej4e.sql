/* 4. Trataremos de obtener una lista de los actores, sus episodios, temporadas, series y
géneros de forma incremental:
a. Obtener el nombre de las series y el nombre de su género.
b. Obtener el nombre de las series, el nombre de su género, el número y
nombre de temporada.
c. Obtener el nombre de las series, el nombre de su género, el número de
temporada, nombre de temporada, número de capítulo y nombre del capítulo.
d. Obtener el nombre de las series, el nombre de su género, el número de
temporada, nombre de temporada, número de capítulo, nombre del capítulo,
nombre y apellido del actor.
e. Mejorar la consulta para que el nombre y apellido aparezcan en un solo
campo. Investigar la función CONCAT
f. Mejorar la consulta para que los campos que pueden ser null, en caso de
serlo diga “Falta información”. Investigar la función COALESCE */

select s.titulo, g.nombre, t.numero, t.titulo, e.numero, e.titulo, concat(a.nombre, " ", a.apellido)
from serie as s
	inner join genero as g on s.id_genero = g.id
    inner join temporada as t on s.id = t.id_serie
    inner join episodio as e on t.id = e.id_temporada
    inner join actor_episodio as ae on e.id = ae.id
    inner join actor as a on ae.id_actor = a.id