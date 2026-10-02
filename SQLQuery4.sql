--SELECT Sexo, COUNT(*) AS 'Qtd.'
--FROM Agenda
--GROUP BY Sexo;

--SELECT Profissao, COUNT(*) AS 'Qtd.'
--FROM Agenda
--GROUP BY Profissao, Sexo
--HAVING Sexo = 'F';

--SELECT Profissao, Count(*) AS 'Qtd.'
--FROM Agenda
--WHERE Sexo = 'M'
--GROUP BY Profissao;

--SELECT Profissao, Nome
--FROM Agenda
--ORDER BY Profissao, Nome DESC;

--SELECT TOP (3) salario
--FROM Agenda
--ORDER BY Salario DESC;

--SELECT * FROM Agenda WHERE Sexo = 'F';

--SELECT Matricula, Nome FROM Agenda;

--SELECT Matricula, Nome FROM Agenda WHERE sexo = 'F';

--SELECT Matricula, Nome FROM Agenda ORDER BY Nome ASC;

--USE Juncao;
--SELECT * FROM Empregado, Cargo WHERE Empregado.Cd_Cargo = Cargo.Cd_Cargo;

--SELECT * FROM Empregado UNION SELECT * FROM Empregado2;

--SELECT * FROM Empregado UNION ALL SELECT * FROM Empregado2;

--SELECT * FROM Empregado INTERSECT SELECT * FROM Empregado2;

--select * from Empregado except select * from Empregado2;

--CREATE TABLE marcas ( marca VARCHAR (50),
--                       nome VARCHAR (50) );

--INSERT INTO marcas
--           ( marca, nome)

--VALUES
--           ( 'VW' ,'Volkswagem' ),
--           ( 'Ford' ,'Ford' ),
--           ( 'GM' ,'General Motors' ),
--           ( 'Fiat' ,'Fiat' ),
--           ( 'Renault','Renault' ),
--           ( 'MB' ,'Mercedes-Benz' );

--CREATE TABLE carros ( modelo VARCHAR (100),
--                      marca VARCHAR (50),
--                      ano INTEGER,
--                      cor VARCHAR (20));

--INSERT INTO carros
--            ( modelo, marca, ano, cor )
--VALUES
--            ( 'Fox' ,'VW' ,2005 ,'preto' ),
--            ( 'Ecosport','Ford' ,2009 ,'verde' ),
--            ( 'KA' ,'Ford' ,2008 ,'prata' ),
--            ( 'Punto' ,'Fiat' ,2008 ,'branco'),
--            ( 'Uno' ,'Fiat' ,2007 ,'preto' ),
--            ( 'Stilo' ,'Fiat' ,2004 ,'prata' ),
--            ( 'Uno' ,'Fiat' ,2009 ,'branco'),
--            ( '207' ,'Peugeot' ,2010 ,'prata' ),
--            ( '300 C' ,'Chrysler',2008 ,'verde' );

--SELECT marcas.nome, carros.modelo
--FROM marcas
--INNER JOIN carros ON carros.marca = marcas.marca;

--SELECT m.nome, c.modelo
--FROM   marcas AS m
--LEFT JOIN carros AS c ON c.marca = m.marca;

--SELECT m.nome, c.modelo
--FROM   marcas AS m
--RIGHT JOIN carros AS c ON c.marca = m.marca;

--SELECT m.nome, c.modelo
--FROM   marcas AS m
--FULL JOIN carros AS c ON c.marca = m.marca;

--SELECT m.nome, c.modelo
--FROM   marcas AS m
--CROSS JOIN carros AS c;

--SELECT m.nome, c.modelo
--FROM   marcas AS m, carros AS c;