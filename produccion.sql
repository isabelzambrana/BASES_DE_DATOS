-- a) Diagrama ER correspondiente en Workbench, determinando las relaciones necesarias y correctas entre ellas, además de normalizar, si fuera necesario. (5 ptos.)

-- b)La generación de un script correcto con el código SQL para crear las tablas y relaciones, y ejecutarlo en una Base de Datos denominada “ELECTRODOMESTICOS”. (5ptos.)
USE electrodomesticos;

-- c)El llenado de al menos 15 registros en la tabla Fabricante.
select * from Fabricante;

-- c)El llenado de al menos 15 registros en la tabla Fabricante.
select * from Producto;
 
-- d) Las siguientes consultas: (20 ptos)
       -- 1. Obtener los nombres y modelos de todos los productos que ofrece la tienda.(listo)
           select nom_prod,mod_prod,precio_prod from Producto;
	
       -- 2. Obtener los nombres y precios de todos los productos cuyo precio sea menor o igual a 200 $us.(listo)
           select nom_prod,mod_prod,precio_prod from Producto where precio_prod<=200;
           
       -- 3. Obtener todos los datos de los productos, cuyo precio esté entre los 60 y 120 $us(ambas cantidades incluidas).(si funciona si se hace así y no com el between)
           select nom_prod,mod_prod,precio_prod FROM Producto WHERE precio_prod>=60 AND precio_prod<=120  ;

       -- 4. Listar todos los nombres y modelos de productos cuyo fabricante sea SONY.(no funca por q la relacion es 1:n, no n:m)
           select nom_prod,mod_prod from Producto,Fabricante where nom_fabric = 'Sony';

       -- 5. Listar nombres y precios de los productos cuyo precio sea menor a 100$us y superior a 500$us.(listo) 
           select nom_prod,precio_prod from Producto where precio_prod<100 OR precio_prod>500  ;

       -- 6. Listar nombres y país de origen de todos los fabricantes que sean SAMSUNG, o que tengan como país de origen Japón.(listo)
           select nom_fabric,país_orig from Fabricante where nom_fabric = 'Samsung' OR país_orig  = 'Japón';

       -- 7. Listar el nombre de todos los celulares ordenados ascendentemente por nombre. (listo)
           select nom_prod,mod_prod,precio_prod from Producto order by nom_prod asc;

       -- 8. Obtener el nombre y país de origen, de todos los fabricantes que inicien su nombre con S.(listo)
           select nom_fabric, país_orig from Fabricante where nom_fabric LIKE 'S%' ;

       -- 9. Obtener el nombre de los productos que contengan como segundo caracter en su nombre la letra ‘e’.(masomenos listo)
           select nom_prod from Producto where nom_prod LIKE '%e%';

       -- 10. Obtener el nombre y el precio de los productos cuyo precio sobrepase los 300$us,ordenado por nombre.(listo)
           select nom_prod,mod_prod,precio_prod from Producto where precio_prod>300 Order by nom_prod;

