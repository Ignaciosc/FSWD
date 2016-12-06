/*7. Traer todos los actores (sin repetir) que hayan actuado en alguna película durante
los últimos 5 años. La misma consulta debe servir tanto si se ejecuta hoy como
dentro de algunos años. Investigar las funciones de Fecha y utilizar las que nos
pueden servir para resolver este ejercicio. */

select distinct concat(a.nombre, " ", a.apellido), p.fecha_de_estreno
from actor as a
inner join actor_pelicula as ap on a.id = ap.id_actor
inner join pelicula as p on ap.id_pelicula = p.id
where p.fecha_de_estreno > (now() - interval 5 year)