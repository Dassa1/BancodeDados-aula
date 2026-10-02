USE Exercicios;
SELECT * FROM Agenda;
SELECT Nome, Profissao FROM Agenda;
SELECT Profissao FROM Agenda;
SELECT DISTINCT Profissao FROM Agenda;
SELECT Nome AS 'NOME COMPLETO', Profissao AS PROFISSÃO
FROM Agenda;
SELECT * FROM Agenda WHERE salario < 2000;
SELECT * FROM Agenda WHERE salario <= 2000;
SELECT * FROM Agenda WHERE salario > 2000;
SELECT * FROM Agenda WHERE salario >= 2000;
SELECT * FROM Agenda WHERE salario = 2000;
SELECT * FROM Agenda WHERE salario <> 2000;

SELECT * FROM Agenda WHERE matricula IN (1,3,5,7);
SELECT * FROM Agenda WHERE salario BETWEEN 1500 AND 2000;
SELECT * FROM Agenda WHERE salario NOT BETWEEN 1500 AND 2000;
SELECT * FROM Agenda WHERE salario is NULL;
SELECT * FROM Agenda WHERE salario IS not NULL;
SELECT * FROM Agenda WHERE nome LIKE '%silva%';
SELECT * FROM Agenda WHERE nome  LIKE '%S';
SELECT nome FROM Agenda WHERE nome LIKE '__R%';
SELECT nome FROM Agenda WHERE nome LIKE '__R%S';
SELECT * FROM Agenda WHERE nome LIKE '%silva%';
SELECT nome FROM Agenda WHERE ' '+nome+' ' LIKE '% Silva %';
