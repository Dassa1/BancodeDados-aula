CREATE DATABASE Atividade;
USE Atividade;
CREATE TABLE EMPREGADO( 
           Mt_Empregado    INT              IDENTITY(1001,1)   PRIMARY KEY,
		   Nome            VARCHAR(50)      NOT NULL,
		   Sexo            CHAR(1)          NOT NULL           CHECK (sexo in ('M', 'F')));

CREATE TABLE DEPENDENTE(
           Cd_Dependente    INT              IDENTITY(100,1)    PRIMARY KEY,
		   Nome             VARCHAR(50)      NOT NULL,
		   Sexo             CHAR(1)          NOT NULL           CHECK (Sexo in ('F', 'M')),
		   Mt_Empregado     INT              NOT NULL           REFERENCES Empregado(Mt_Empregado) 
		   ON DELETE CASCADE);

INSERT INTO EMPREGADO (Nome, Sexo)
VALUES
	('Fred', 'M'),
	('Bianca', 'F');
INSERT INTO DEPENDENTE (Nome, Sexo, Mt_Empregado)
VALUES
	('Yasmin', 'M', 1001),
	('Lana', 'F', 1002);

DELETE FROM EMPREGADO WHERE Mt_Empregado = 1001
select*from Empregado
select*from Dependente
