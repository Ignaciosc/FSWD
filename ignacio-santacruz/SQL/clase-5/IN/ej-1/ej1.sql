/* 1. Traer todos los géneros que estén rankeados en los puestos 4, 7 y 9. */

select *
from genero
where ranking in (4, 7, 9)