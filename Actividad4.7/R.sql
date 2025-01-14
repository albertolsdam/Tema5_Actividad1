CREATE TABLE CONTACTOS ( ID INT NOT NULL PRIMARY KEY, NOMBRE VARCHAR(10) NOT NULL, CIUDAD VARCHAR(10) NOT NULL);
CREATE TABLE CORREOS ( ID_CORREO INT NOT NULL PRIMARY KEY, ID_CONTACTO INT NOT NULL, CORREO VARCHAR(100) NOT NULL, CONSTRAINT CONTACTO_CORREOS_FK FOREIGN KEY (ID_CONTACTO) REFERENCES CONTACTOS (ID) );
CREATE TABLE TELEFONOS (ID_TELEFONO INT NOT NULL PRIMARY KEY, ID_CONTACTO INT NOT NULL, TELEFONO VARCHAR(10) NOT NULL, CONSTRAINT CONTACTO_TELEFONOS_FK FOREIGN KEY (ID_CONTACTO) REFERENCES CONTACTOS (ID) );

INSERT INTO CONTACTOS (ID, NOMBRE,CIUDAD) VALUES (1, 'PABLO', 'ALMERIA');
INSERT INTO CONTACTOS (ID, NOMBRE,CIUDAD) VALUES (2, 'MARIO', 'GRANADA');
INSERT INTO CONTACTOS (ID, NOMBRE,CIUDAD) VALUES (3, 'LUCIA', 'MADRID');

INSERT INTO CORREOS (ID_CORREO, ID_CONTACTO, CORREO) VALUES (1, 1, 'pablo@yahoo.com');
INSERT INTO CORREOS (ID_CORREO, ID_CONTACTO, CORREO) VALUES (2, 1, 'pablo@gmail.com');
INSERT INTO CORREOS (ID_CORREO, ID_CONTACTO, CORREO) VALUES (3, 2, 'mario@yahoo.com');
INSERT INTO CORREOS (ID_CORREO, ID_CONTACTO, CORREO) VALUES (4, 2, 'mario@empresa.com');
INSERT INTO CORREOS (ID_CORREO, ID_CONTACTO, CORREO) VALUES (5, 2, 'mario@jaspersoft.com');
INSERT INTO CORREOS (ID_CORREO, ID_CONTACTO, CORREO) VALUES (6, 3, 'lmc@dominio.es');
INSERT INTO CORREOS (ID_CORREO, ID_CONTACTO, CORREO) VALUES (7, 3, 'lucy@algunemail.com');
INSERT INTO CORREOS (ID_CORREO, ID_CONTACTO, CORREO) VALUES (8, 3, 'luciamartos@organizacion.org');

INSERT INTO TELEFONOS (ID_TELEFONO, ID_CONTACTO, TELEFONO) VALUES (1, 1, '111111111');
INSERT INTO TELEFONOS (ID_TELEFONO, ID_CONTACTO, TELEFONO) VALUES (2, 1, '222222222');
INSERT INTO TELEFONOS (ID_TELEFONO, ID_CONTACTO, TELEFONO) VALUES (3, 1, '333333333');
INSERT INTO TELEFONOS (ID_TELEFONO, ID_CONTACTO, TELEFONO) VALUES (4, 2, '444444444');
INSERT INTO TELEFONOS (ID_TELEFONO, ID_CONTACTO, TELEFONO) VALUES (5, 3, '555555555');
INSERT INTO TELEFONOS (ID_TELEFONO, ID_CONTACTO, TELEFONO) VALUES (6, 3, '666666666');
