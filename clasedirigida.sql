Use musica ;
select  * from grupo_musical;
INSERT INTO `musica`.`grupo_musical` (`nombre`, `antiguedad`) VALUES ('Kjarkas', '61');
INSERT INTO `musica`.`grupo_musical` (`nombre`, `antiguedad`) VALUES ('Bonanza', '35');
INSERT INTO `musica`.`grupo_musical` (`nombre`, `antiguedad`) VALUES ('Maroyu', '12');
INSERT INTO `musica`.`grupo_musical` (`nombre`, `antiguedad`) VALUES ('Savia Andina', '58');
INSERT INTO `musica`.`grupo_musical` (`nombre`, `antiguedad`) VALUES ('Frontera', '2');
INSERT INTO `musica`.`grupo_musical` (`nombre`, `antiguedad`) VALUES ('Enanitos Verdes', '47');
INSERT INTO `musica`.`grupo_musical` (`nombre`, `antiguedad`) VALUES ('Autenticos Decadentes', '19');
INSERT INTO `musica`.`grupo_musical` (`nombre`, `antiguedad`) VALUES ('Soda Estereo', '45');


select*from integrantes;
INSERT INTO `musica`.`integrantes`(`nombre_integrantes`,`apellido_paterno`,`apellido_materno`,`edad`) VALUES ('Elmer','Hermosa','Gonzales','50');
INSERT INTO `musica`.`integrantes`(`nombre_integrantes`,`apellido_paterno`,`apellido_materno`,`edad`) VALUES ('Gonzalo','hermosa','Gonzales','55');
INSERT INTO `musica`.`integrantes`(`nombre_integrantes`,`apellido_paterno`,`edad`) VALUES ('Nestor','Yucra','50');
INSERT INTO `musica`.`integrantes`(`nombre_integrantes`,`apellido_paterno`,`apellido_materno`,`edad`) VALUES ('Gerardo','Arias','Pérez','63');
INSERT INTO `musica`.`integrantes`(`nombre_integrantes`,`apellido_paterno`,`apellido_materno`,`edad`) VALUES ('Eddy','Navia','Alanes','38');
INSERT INTO `musica`.`integrantes`(`nombre_integrantes`,`apellido_paterno`,`edad`) VALUES ('Marciano','Cantero','54');
INSERT INTO `musica`.`integrantes`(`nombre_integrantes`,`apellido_paterno`,`apellido_materno`,`edad`) VALUES ('Jorge','Serreno','Fuentes','32');

select*from contrato ;
INSERT INTO `musica`.`contrato` (`grupo_musical_idgrupo`,`integrantes_idintegrantes`) VALUES ('1','1');
INSERT INTO `musica`.`contrato` (`grupo_musical_idgrupo`,`integrantes_idintegrantes`) VALUES ('1','2');
INSERT INTO `musica`.`contrato` (`grupo_musical_idgrupo`,`integrantes_idintegrantes`) VALUES ('3','3');
INSERT INTO `musica`.`contrato` (`grupo_musical_idgrupo`,`integrantes_idintegrantes`) VALUES ('4','4');
INSERT INTO `musica`.`contrato` (`grupo_musical_idgrupo`,`integrantes_idintegrantes`) VALUES ('2','5');
INSERT INTO `musica`.`contrato` (`grupo_musical_idgrupo`,`integrantes_idintegrantes`) VALUES ('6','6');
INSERT INTO `musica`.`contrato` (`grupo_musical_idgrupo`,`integrantes_idintegrantes`) VALUES ('7','7');


-- CLÁUSULAS._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._._. 
-- 5. Mostrar nombre completo y edad de todos los integrantes que tengan al menos 54 años
select nombre_integrantes, apellido_paterno, apellido_materno from integrantes where edad>=54;

-- 6. Mostrar nombre completo y edad de todos los integrantes que tengan menos 40 años
select nombre_integrantes, apellido_paterno, apellido_materno, edad from integrantes where edad<40;

-- 7. Listar nombrre completo y edad de los integrantes que apelliden Hermosa y tengan mas de 65 años 
select nombre_integrantes, apellido_paterno, apellido_materno, edad from integrantes where apellido_paterno='Hermosa' AND edad>=65;

-- 8. Listar nobmre completo y edad de los integrantes que apelliden Hermosa o tengan mas de 60 años 
select nombre_integrantes, apellido_paterno,apellido_materno, edad from integrantes where apellido_paterno='Hermosa' OR edad>60;

-- 9. Mostrar todos los grumos musicales en orden alfabetico de la A a la Z de los grupos con antiguedad mayor a 10 años
select*from grupo_musical where antiguedad>10 ORDER BY nombre ASC;

-- 10. Mostrar todos los grumos musicales en orden de antiguedad desde los mas antiguos a los mas recientes
select * from grupo_musical ORDER BY antiguedad DESC;

-- 11. Listar todos los grupos musicales cuyo nombre inicie con S 
select * from grupo_musical where nombre LIKE 'S%'; -- el porcentaje omite o ignora cualquier caracter antes o despues de S
 
 -- 12. Listar los nombres completos de los integrantes que tengan en su apellido paterno I-A 
 select nombre_integrantes, apellido_paterno, apellido_materno from integrantes where apellido_paterno LIKE '%ia%';
 ALTER TABLE grupo_musical ADD telefono VARCHAR (10);
 
 -- 13. Listar todos los grupos musicales que tengan telefono fijo
 select * from grupo_musical where telefono LIKE '_______';
 
-- 14.¿Cuantos integrantes estan registrados mayores de 50 años ?
SELECT COUNT(*) from  integrantes where edad>50;

-- Añadir el campo fecha_fund a la tabla grupo_musical
ALTER TABLE grupo_musical ADD fecha_fund DATE;

-- 15. Listar  el nombre y año  de fundacion de los grupos fundandos entre 2000 y 2023
Select Nombre, fecha_fund from grupo_musical where fecha_fund BETWEEN '2000-01-01' AND '2023-07-31';

-- 16. Listar el nombre completo de los integrantes cuyo apellido paterno este entre la A y la M
Select nombre_integrantes, apellido_paterno,apellido_materno from integrantes where apellido_paterno BETWEEN 'A' AND 'M' ORDER BY apellido_paterno ASC;

