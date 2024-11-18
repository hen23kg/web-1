/*
SQLyog Enterprise - MySQL GUI v8.1 
MySQL - 5.5.5-10.4.13-MariaDB : Database - agendaweb_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE IF NOT EXISTS agenda_db;

USE agenda_db;



DROP TABLE IF EXISTS contacto;

CREATE TABLE contacto (
  contactoId INT(11) NOT NULL AUTO_INCREMENT,
  nombreContacto VARCHAR(250) NOT NULL,
  email VARCHAR(250) NOT NULL,
  usuarioId INT(11) NOT NULL,
  imagenId INT(11) DEFAULT NULL,
  PRIMARY KEY (contactoId),
  KEY IX_Contacto_imagenId (imagenId),
  KEY IX_Contacto_usuarioId (usuarioId),
  CONSTRAINT FK_Contacto_Imagen_imagenId FOREIGN KEY (imagenId) REFERENCES imagen (imagenId),
  CONSTRAINT FK_Contacto_Usuario_usuarioId FOREIGN KEY (usuarioId) REFERENCES usuario (usuarioId) ON DELETE CASCADE
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

/*Table structure for table imagen */

DROP TABLE IF EXISTS imagen;

CREATE TABLE imagen (
  imagenId INT(11) NOT NULL AUTO_INCREMENT,
  fileName VARCHAR(200) NOT NULL,
  path VARCHAR(1000) NOT NULL,
  temporal TINYINT(1) NOT NULL,
  fechaSubida DATETIME(6) NOT NULL,
  PRIMARY KEY (imagenId)
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

/*Data for the table imagen */

/*Table structure for table telefonoContacto */

DROP TABLE IF EXISTS telefonoContacto;

CREATE TABLE telefonoContacto (
  telefonoContactoId INT(11) NOT NULL AUTO_INCREMENT,
  contactoId INT(11) NOT NULL,
  nroTelefono VARCHAR(50) NOT NULL,
  PRIMARY KEY (telefonoContactoId),
  KEY IX_TelefonoContacto_contactoId (contactoId),
  CONSTRAINT FK_TelefonoContacto_Contacto_contactoId FOREIGN KEY (contactoId) REFERENCES contacto (contactoId) ON DELETE CASCADE
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

/*Data for the table telefonoContacto */

CREATE TABLE direccionContacto (
  direccionContactoId INT(11) NOT NULL AUTO_INCREMENT,
  contactoId INT(11) NOT NULL,
  direccion VARCHAR(100) NOT NULL,
  PRIMARY KEY (direccionContactoId),
  KEY IX_DireccionContacto_contactoId (contactoId),
  CONSTRAINT FK_DireccionContacto_Contacto_contactoId FOREIGN KEY (contactoId) REFERENCES contacto (contactoId) ON DELETE CASCADE
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

/*Table structure for table usuario */

DROP TABLE IF EXISTS usuario;

CREATE TABLE usuario (
  usuarioId INT(11) NOT NULL AUTO_INCREMENT,
  fullName VARCHAR(50) DEFAULT NULL,
  userName VARCHAR(50) NOT NULL,
  password VARCHAR(50) NOT NULL,
  imagenId INT(11) DEFAULT NULL,
  PRIMARY KEY (usuarioId),
  KEY IX_Contacto_imagenId (imagenId),
  CONSTRAINT FK_Usuario_Imagen_imagenId FOREIGN KEY (imagenId) REFERENCES imagen (imagenId)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;


/*Data for the table usuario */

INSERT  INTO usuario(usuarioId,fullName,userName,PASSWORD) VALUES (1,'Juan Perez','jperez','jperez');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

SELECT * from contacto ;
SELECT * from IMAGEN I ;
SELECT * from TELEFONOCONTACTO T ;
SELECT  * from usuario ;
SELECT * from DIRECCIONCONTACTO D ;


DROP TABLE IF EXISTS telefonoContacto;
DROP TABLE IF EXISTS contacto;
DROP TABLE IF EXISTS imagen;
DROP TABLE IF EXISTS usuario;






SELECT * FROM usuario WHERE username = 'loza';

SELECT * FROM direccionContacto WHERE contactoId = 1 order by direccionContactoId;

















