Use pruebas_ayuda_2024;
SHOW TABLES;
select * from admin;
INSERT INTO `pruebas_ayuda_2024`.`admin` (`idadmin`,`nombres_admin`, `app_admin`, `apm_admin`) VALUES ('1','renata', 'Cesto', 'Aranibar');
INSERT INTO `pruebas_ayuda_2024`.`admin` (`idadmin`,`nombres_admin`, `app_admin`, `apm_admin`) VALUES ('2','Luz', 'Carvajal', 'Rea');
INSERT INTO `pruebas_ayuda_2024`.`admin` (`idadmin`,`nombres_admin`, `app_admin`, `apm_admin`) VALUES ('3','Leon', 'Arratia', 'Gaspar');
select * from usuario;
INSERT INTO `pruebas_ayuda_2024`.`usuario` (`idusuario`, `nombre_usuario`, `contraseña_usuario`, `admin_idadmin`) VALUES ('1', 'Noviembre', 'Comida_deli', '1');
INSERT INTO `pruebas_ayuda_2024`.`usuario` (`idusuario`, `nombre_usuario`, `contraseña_usuario`, `admin_idadmin`) VALUES ('2', 'azuca_minegra', 'soysal4D@', '1');
INSERT INTO `pruebas_ayuda_2024`.`usuario` (`idusuario`, `nombre_usuario`, `contraseña_usuario`, `admin_idadmin`) VALUES ('3', 'miel_da', 'abejitasbzbz', '2');
INSERT INTO `pruebas_ayuda_2024`.`usuario` (`idusuario`, `nombre_usuario`, `contraseña_usuario`, `admin_idadmin`) VALUES ('4', 'Lobo_auuuu', 'Lobo_A', '2');
INSERT INTO `pruebas_ayuda_2024`.`usuario` (`idusuario`, `nombre_usuario`, `contraseña_usuario`, `admin_idadmin`) VALUES ('5', 'Pedro_clavéunclavito', 'calvadelcalvito', '3');
INSERT INTO `pruebas_ayuda_2024`.`usuario` (`idusuario`, `nombre_usuario`, `contraseña_usuario`, `admin_idadmin`) VALUES ('6', 'Sol_dadito', 'libertad.AAAAARGH', '3');


