--SELECCIONAR NOMBRE
select nombre from producto;

--SELECCIONAR NOMBRE Y PRECIO
select nombre, precio from producto;

--SELECCIONAR TODAS LAS COLUMNAS
select * from producto;

--MOSTRAR NOMBRE, PRECIO EN EUROS Y PRECIO EN DOLAR
select nombre, precio, precio*1.04 from producto;

--MOSTRAR LOS ÍTEMS CON OTROS NOMBRES
select nombre nombre_de_producto, 
precio euros, 
precio*1.04 dólares 
from producto;

--MOSTRAR EL NOMBRE EN MAYÚSCULA
select upper(nombre), precio from producto;

--MOSTRAR EL NOMBRE EN MINÚSCULA
select lower(nombre), precio from producto;

--MOSTRAR, EN MAYÚSCULA LAS PRIMERAS DOS LETRAS DEL NOMBRE
select nombre, upper(substring(nombre, 1, 2)) 
from fabricante; 

--MOSTRAR EL PRECIO REAL, EL ENTERO MÁS CERCANO PARA ARRIBA, EL MÁS CERCANO PARA ABAJO, REDONDEAR, NO MOSTRAR DECIMALES
select nombre, 
precio as precio_real, 
ceiling(precio) as f_ceiling, 
floor(precio) as f_floor,
round(precio) as f_round, 
truncate(precio, 0) as f_truncate 
from producto;

--MOSTRAR, UNA SOLA VEZ(DISTINCT), EL CÓDIGO DE LOS FABRICANTES QUE APARECEN EN LA TABLA PRODUCTO
SELECT distinct fabricante.codigo 
from fabricante 
join producto 
on fabricante.codigo = producto.codigo_fabricante;

--ORDENAR POR NOMBRE DESCENDENTE
SELECT NOMBRE 
FROM FABRICANTE
ORDER BY NOMBRE DESC

--ORDENAR POR NOMBRE ASCENDENTE
SELECT NOMBRE
FROM FABRICANTE
ORDER BY NOMBRE ASC;

--ORDENAR POR PRECIO DESCENDENTE
SELECT NOMBRE, PRECIO
FROM PRODUCTO
ORDER BY PRECIO DESC;

--LIMITAR EL NÚMERO DE FILAS QUE SE MUESTRAN
SELECT NOMBRE
FROM FABRICANTE
LIMIT 5;

