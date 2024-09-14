Use  refugio;
SHOW TABLES;
select * from Dueno;
INSERT INTO `refugio`.`Dueno` (`idDueno`, `nombre_completo`, `edad`, `direccion`, `ocupacion`) VALUES ('1', 'Mario Hugo', '43', 'cercado', 'reportero');
INSERT INTO `refugio`.`Dueno` (`idDueno`, `nombre_completo`, `edad`, `direccion`, `ocupacion`) VALUES ('2', 'Ramon', '20', 'sacaba', 'artista');
INSERT INTO `refugio`.`Dueno` (`idDueno`, `nombre_completo`, `edad`, `direccion`, `ocupacion`) VALUES ('3', 'Juan', '32', 'quillacollo', 'profesor');
INSERT INTO `refugio`.`Dueno` (`idDueno`, `nombre_completo`, `edad`, `direccion`, `ocupacion`) VALUES ('4', ' Rosa', '24', 'tiquipaya', 'pintora');
INSERT INTO `refugio`.`Dueno` (`idDueno`, `nombre_completo`, `edad`, `direccion`, `ocupacion`) VALUES ('5', 'René', '28', 'sacaba', 'arquitecto');
INSERT INTO `refugio`.`Dueno` (`idDueno`, `nombre_completo`, `edad`, `direccion`, `ocupacion`) VALUES ('6', 'Diego', '36', 'cercado', 'actor');
INSERT INTO `refugio`.`Dueno` (`idDueno`, `nombre_completo`, `edad`, `direccion`, `ocupacion`) VALUES ('7', 'Paola', '43', 'tiquipaya', 'biologa');
INSERT INTO `refugio`.`Dueno` (`idDueno`, `nombre_completo`, `edad`, `direccion`, `ocupacion`) VALUES ('8', 'Mariana', '67', 'cercado', 'quimica ');
INSERT INTO `refugio`.`Dueno` (`idDueno`, `nombre_completo`, `edad`, `direccion`, `ocupacion`) VALUES ('9', 'Teresa', '23', 'quillacollo', 'cantante');
INSERT INTO `refugio`.`Dueno` (`idDueno`, `nombre_completo`, `edad`, `direccion`, `ocupacion`) VALUES ('10', 'Belén', '46', 'cercado', 'maquillista');

select * from perrito;
INSERT INTO `refugio`.`perrito` (`idperrito`, `nombre`, `edad`, `sexo`, `color`, `raza`, `Dueno_idDueno`) VALUES ('1', 'Coliforme', '2', 'macho', 'rojo', 'coocker', '1');
INSERT INTO `refugio`.`perrito` (`idperrito`, `nombre`, `edad`, `sexo`, `color`, `raza`, `Dueno_idDueno`) VALUES ('2', 'Chaucha', '4', 'hembra', 'blanco', 'chapi', '2');
INSERT INTO `refugio`.`perrito` (`idperrito`, `nombre`, `edad`, `sexo`, `color`, `raza`, `Dueno_idDueno`) VALUES ('3', 'Adjetivo', '5', 'hembra', 'negro', 'husky', '3');
INSERT INTO `refugio`.`perrito` (`idperrito`, `nombre`, `edad`, `sexo`, `color`, `raza`, `Dueno_idDueno`) VALUES ('4', 'Chamullo', '2', 'macho', 'cafe', 'chihuahua', '4');
INSERT INTO `refugio`.`perrito` (`idperrito`, `nombre`, `edad`, `sexo`, `color`, `raza`, `Dueno_idDueno`) VALUES ('5', 'Playita', '6', 'hembra', 'beige', 'pastor aleman', '5');
INSERT INTO `refugio`.`perrito` (`idperrito`, `nombre`, `edad`, `sexo`, `color`, `raza`, `Dueno_idDueno`) VALUES ('6', 'Chu', '5', 'macho', 'cafe', 'pastor ingles', '6');
INSERT INTO `refugio`.`perrito` (`idperrito`, `nombre`, `edad`, `sexo`, `color`, `raza`, `Dueno_idDueno`) VALUES ('7', 'Copi Copi', '3', 'macho', 'negro', 'salchicha', '7');
INSERT INTO `refugio`.`perrito` (`idperrito`, `nombre`, `edad`, `sexo`, `color`, `raza`, `Dueno_idDueno`) VALUES ('8', 'Maletin', '2', 'macho', 'blanco y negro', 'chapi', '8');
INSERT INTO `refugio`.`perrito` (`idperrito`, `nombre`, `edad`, `sexo`, `color`, `raza`, `Dueno_idDueno`) VALUES ('9', 'Duquesa', '7', 'hembra', ' café oscuro', 'pastor aleman', '9');
INSERT INTO `refugio`.`perrito` (`idperrito`, `nombre`, `edad`, `sexo`, `color`, `raza`, `Dueno_idDueno`) VALUES ('10', 'Yo soy', '5', 'macho', 'beige', 'golden', '10');


