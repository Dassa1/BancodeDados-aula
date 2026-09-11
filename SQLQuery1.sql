CREATE DATABASE Banco;
USE Banco;
ALTER DATABASE Banco
MODIFY NAME = Agenda2000;
CREATE TABLE Pessoal
           ( Matrícula  INTEGER,
		     Nome       VARCHAR(50),
			 Nascimento DATE,
			 Sexo       CHAR(1),
			 Salario    DECIMAL(10,2) );

ALTER TABLE Pessoal ADD Observacao VARCHAR(200);
ALTER TABLE Pessoal ALTER COLUMN Observacao VARCHAR(150);
ALTER TABLE Pessoal DROP COLUMN Observacao;
DROP TABLE Pessoal;

CREATE TABLE Departamento (Numero  INTEGER,
                          Nome    VARCHAR(50),
						   Local   VARCHAR(20),
						   Orcamento DECIMAL(12,2) );

SELECT * FROM Departamento;

INSERT INTO Departamento
           ( Numero, Nome, Local, Orcamento )
VALUES     
            ( 70, 'Producao', 'Recife', 1000 );

SELECT * FROM Departamento;
UPDATE Departamento
SET Nome = 'Pessoal'
WHERE Nome = 'Producao';

SELECT * FROM Departamento;

DELETE FROM Departamento
WHERE Nome = 'Pessoal';

SELECT * FROM Departamento;

INSERT INTO Departamento
           ( Numero, Nome, Local, Orcamento )
VALUES
           ( 10, 'Produção', 'Recife', 15000 ),
		   ( 20, 'Contábil', 'Olinda', 30000 ),
		   ( 30, 'Contábil', 'Olinda', 40000 ),
		   ( 40, 'Contábil', 'Recife', 50000 );

SELECT * FROM Departamento;

UPDATE Departamento
SET Nome = 'Estoque'
WHERE Nome = 'Contábil' AND Orcamento >= 35000;

SELECT * FROM Departamento;

DELETE FROM Departamento
WHERE Local = 'Recife' OR Orcamento >= 40000;

SELECT * FROM Departamento;

CREATE TABLE Pessoa ( Mt_Pessoa INTEGER,
					   Nm_Pessoa VARCHAR(50) NOT NULL,
					   Sx_Pessoa CHAR(1) DEFAULT('M') );

INSERT INTO Pessoa ( Mt_Pessoa, Nm_Pessoa )
            VALUES ( 1002, 'Jorge' );

SELECT * FROM Pessoa;

CREATE TABLE Cargo ( Cd_Cargo INTEGER PRIMARY KEY,
                     Ds_Cargo VARCHAR(50) NOT NULL );

DROP TABLE Pessoa;

CREATE TABLE Persona ( Mt_Persona INTEGER PRIMARY KEY,
                       Nm_Persona VARCHAR(50) NOT NULL,
                       Cd_Cargo INTEGER
                       REFERENCES Cargo(Cd_Cargo) );


