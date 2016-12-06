/* 3. Traer los géneros rankeados en el tercer, cuarto y quinto puesto. */

select *
from genero
where ranking in (3, 4, 5)