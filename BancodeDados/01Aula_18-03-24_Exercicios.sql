/*
	Exerc�cios 02 - Operadores SQL
	Turma: MIF2AN Data: 18/03/2024
*/
-- 1. Quais operadores aritm�ticos podem ser utilizados?

+, -, *, / e %.

-- 2. Quais s�mbolos s�o utilizados para alterar a prioridade de c�lculo matem�tico?

( )

-- 3. Quais s�o os operadores de compara��o suportados?

=, <>, <, >, <=, >=

-- 4. Quais s�o os operadores l�gicos suportados?

and, or e not

-- 5. Quais s�o os operadores auxiliares suportados?

=, <>, <, >

-- 6. Fa�a uma simula��o para apresentar uma consulta com as colunas (campos)
-- CODFUN, NOME, SALARIO com sal�rio somado a R$ 250.00.

SELECT NOME, SALARIO, SALARIO + 250 AS RESULTADO FROM CADFUN;

-- 7. Fa�a uma simula��o para apresentar uma consulta com as colunas (campos)
-- CODFUN, NOME, SALARIO com uma dedu��o de 7.5%.

SELECT NOME, SALARIO, SALARIO -(SALARIO/100*7.5) FROM CADFUN

-- 8. Apresente uma consulta com todos os campos (colunas) de todos os
-- registros cuja fun��o seja igual a analista.

SELECT * FROM CADFUN WHERE FUNCAO = 'ANALISTA'

-- 9. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros cujo sal�rio seja maior ou igual a R$ 1700.

SELECT * FROM CADFUN WHERE SALARIO >= 1700

-- 10. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros cujo sal�rio seja maior que R$ 1700.

SELECT * FROM CADFUN WHERE SALARIO > 1700

-- 11. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros cujo sal�rio seja menor que R$ 1700.

SELECT * FROM CADFUN WHERE SALARIO < 1700

-- 12. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros cujo sal�rio igual a R$ 1700.

SELECT * FROM CADFUN WHERE SALARIO = 1700

-- 13. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcion�rios com fun��o de programador e de analista.

SELECT * FROM CADFUN WHERE FUNCAO = 'PROGRAMADOR' OR FUNCAO = 'ANALISTA'

-- 14. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcion�rios com fun��o de programador e de analista
-- que ganham acima de 1200.

SELECT * FROM CADFUN WHERE (FUNCAO = 'PROGRAMADOR' OR FUNCAO = 'ANALISTA' )AND SALARIO > 1200;

-- 15. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcion�rios que n�o ocupem as fun��es de programador e de analista.

SELECT * FROM CADFUN WHERE NOT (FUNCAO = 'PROGRAMADOR' OR FUNCAO = 'ANALISTA')

-- 16. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcion�rios que possuem entre 2 e 4 filhos.

SELECT * FROM CADFUN WHERE (FILHOS >=2 AND FILHOS <4)

-- 17. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcion�rios que possuem entre 2 e 4 filhos e recebem sal�rio 
-- abaixo de 2000.

SELECT * FROM CADFUN WHERE (FILHOS >=2 AND FILHOS <4) OR SALARIO <2000

-- 18. Apresentar uma consulta com todos os campos 
-- (colunas) de todos os registros dos funcion�rios que 
-- possuem abaixo de 2 e acima de 3 filhos.

SELECT * FROM CADFUN WHERE (FILHOS <2 OR FILHOS >3)

-- 19. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcion�rios que possuem abaixo de 2 e acima de 3 filhos, 
-- cuja consulta exiba somente os registros dos funcion�rios que possuem filhos.


SELECT * FROM CADFUN WHERE NOT (FILHOS=0 ) AND FILHOS <2 OR FILHOS >3

-- 20. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcion�rios que possuem entre 2 e 3 filhos, utilizando o operador IN.

SELECT * FROM CADFUN WHERE FILHOS IN (2,3)

-- 21. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcion�rios que possuem sobrenome SILVA.

SELECT * FROM CADFUN WHERE NOME LIKE '%SILVA'

-- 22. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcion�rios cujos nomes comecem com CA.

SELECT * FROM CADFUN WHERE NOME LIKE 'CA%'

-- 23. Quais s�o os funcion�rios que possuem sobrenome SANTOS? 
-- Apresentar apenas os nomes.

SELECT NOME FROM CADFUN WHERE NOME LIKE '%SANTOS'

-- 24. Qual � o nome e o departamento dos gerentes e dos analistas?

SELECT NOME, DEPTO FROM CADFUN WHERE FUNCAO = 'GERENTE' OR FUNCAO = 'ANALISTA'

-- 25. Listar os funcion�rios de c�digos 2, 5, e 9. 
-- Apresentar apenas os c�digos nomes e departamentos.

SELECT NOME, DEPTO FROM CADFUN WHERE CODFUN IN (2,5,9)

-- 26. Listar os os nomes e departamentos de todos os funcion�rios que 
-- n�o sejam do departamento 5.

SELECT * FROM CADFUN WHERE NOT (DEPTO = 5)

-- 27. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros dos funcion�rios que possuem em qualquer posi��o de seu nome
-- a palavra SILVA.

SELECT * FROM CADFUN WHERE NOME LIKE '%SILVA%'

-- 28. Apresentar uma consulta com todos os campos (colunas) de todos os
-- registros cujo sal�rio seja diferente de 2000.

SELECT * FROM CADFUN WHERE SALARIO <> 2000

-- 29. Insira um registro na tabela CADFUN com dados de sua escolha.

INSERT INTO CADFUN VALUES (43,'Antonio Batista',3, 'Analista', 100000,'2000-01-01',0)

-- 30. Altere o sal�rio do Augusto Souza para R$ 8580.00.

UPDATE CADFUN SET SALARIO = 8580 WHERE NOME = 'AUGUSTO SOUZA';
UPDATE CADFUN SET SALARIO = 8580 WHERE CODFUN = 5;

SELECT * FROM CADFUN

SP_TABLES

 INSERT INTO CADFUN VALUES (50,'PATRICIA SOUZA',3, 'Analista', NULL,'2000-01-01',0)
  INSERT INTO CADFUN VALUES (51,'VITOR FERRAZ',3, 'Analista', NULL,'2000-01-01',0)

  UPDATE CADFUN SET SALARIO =9000 WHERE NOME = 'PATRICIA SOUZA';
  UPDATE CADFUN SET SALARIO = 5200 WHERE NOME = 'VITOR FERRAZ';

  --DESAFIO
  UPDATE CADFUN SET SALARIO =  SALARIO +(SALARIO/100*1.25)
