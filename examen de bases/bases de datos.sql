Drop database if exists Prueba;

create database Prueba;

use Prueba;

CREATE TABLE clientes (
  CID INT NOT NULL,
  Nombre varchar(10) DEFAULT NULL,
  telefono int(10) DEFAULT NULL,
   PRIMARY KEY (CID)
   ) ENGINE=INNODB;

CREATE TABLE empresas (
  EID int NOT NULL,
  Nombre varchar(10) DEFAULT NULL,
  Precio double(4,2) DEFAULT NULL,
   PRIMARY KEY (EID)
   ) ENGINE=INNODB;
   
CREATE TABLE acciones(
	AID INT NOT NULL,
	CID INT NOT NULL,
	EID INT NOT NULL,
	cantidad int,
	primary key (AID),
	CONSTRAINT fk_1 foreign key (CID) references clientes(CID),
	CONSTRAINT fk_2 foreign key (EID) references empresas(EID)
	) ENGINE=INNODB;

INSERT INTO clientes(CID,Nombre,telefono) VALUES ("1","Jose","111");
INSERT INTO clientes(CID,Nombre,telefono) VALUES ("2","Maria","222");
INSERT INTO clientes(CID,Nombre,telefono) VALUES ("3","Manuel","333");
INSERT INTO clientes(CID,Nombre,telefono) VALUES ("4","Jesus","4444");

INSERT INTO empresas(EID,Nombre,Precio) VALUES ("1","REDHAT","1.19");
INSERT INTO empresas(EID,Nombre,Precio) VALUES ("2","NOVELL","2.02");
INSERT INTO empresas(EID,Nombre,Precio) VALUES ("3","SUN","1.33");
INSERT INTO empresas(EID,Nombre,Precio) VALUES ("4","FORD","0.49");

INSERT INTO acciones(AID,CID,EID,cantidad) VALUES ("1","2","1","10");
INSERT INTO acciones(AID,CID,EID,cantidad) VALUES ("2","4","2","20");
INSERT INTO acciones(AID,CID,EID,cantidad) VALUES ("3","4","3","30");
#INSERT INTO acciones(AID,CID,EID,cantidad) VALUES ("4","5","4","100");