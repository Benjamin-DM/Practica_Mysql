/*Consultas sobre una tabla*/
use tienda;
/*Lista el nombre de todos los productos que hay en la tabla producto.*/
select nombre from producto;
/*Lista los nombres y los precios de todos los productos de la tabla producto*/
select nombre, precio from producto;
/*Lista todas las columnas de la tabla */
select*from producto;
/*Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses*/
select nombre, precio, round(( precio *1.11 ) ) as precio_dolar from producto;
/*Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). Utiliza los siguientes alias para las columnas: */
select nombre AS 'Nombre del producto',
precio as 'euros',
round(( precio *1.11 ) ) as 'dolares'
from producto;
/*Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula.*/
select upper(nombre) from producto;
/*Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a minúscula.*/
select lower(nombre) from producto;
/*Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante.*/
select nombre, upper(left(nombre,2)) from fabricante;
/*Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.*/
select nombre, round(precio) from producto;
/*Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.*/
SELECT 
    nombre, TRUNCATE(precio, 0)
FROM
    producto;
/*Lista el código de los fabricantes que tienen productos en la tabla */
select codigo_fabricante from producto; 
/*Lista el código de los fabricantes que tienen productos en la tabla producto, eliminando los códigos que aparecen repetidos.*/
select codigo_fabricante FROM PRODUCTO GROUP BY codigo_fabricante
HAVING COUNT(*) > 1;
/*Lista los nombres de los fabricantes ordenados de forma ascendente.*/
select nombre from fabricante order by nombre asc;
