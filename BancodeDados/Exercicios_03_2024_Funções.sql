/*
Exerc�cios 03 - FUN��ES SQL
MIF2AN
*/

/* 1. Quais s�o as quatro categorias de fun��es SQL? */

Fun��o de Agrega��o,Fun��o Escalares,Fun��o Data e Hora, Fun��o Analisticas

/* 2. Qual categoria de fun��o � ideal para fazer c�lculos matem�ticos? */
Fun��o de Agrega��o


/* 3. Qual categoria de fun��o � ideal para realizar opera��es estat�sticas? */

Fun��o Analitica 

/* 4. Quais fun��es de agrega��o voc� conhece? */

SUM,AVG,COUNT,MAX E MIN

/* 5. Quais fun��es de data e hora voc� conhece? */
CURRENT_DATE,CURRENT_TIME,EXTRACT,DATE_PART

/* 6. Quais fun��es num�ricas voc� conhece? */
RANK,ROW_NUMBER,LAG,LEAD


/* 7. Quais fun��es string voc� conhece? */

UPPER,LOWER,SUBSTRING,ROUND


/* 8. Qual � o n�mero m�dio de filhos por funcion�rio da empresa? */

SELECT AVG(FILHOS) FROM CADFUN;


/* 9. Qual � o n�mero m�dio de filhos por funcion�rio da empresa que pertence ao departamento 5? */

SELECT AVG(FILHOS) FROM CADFUN WHERE DEPTO=5;

/* 10. Qual � o valor de sal�rios pagos aos funcion�rios do departamento 5? */

SELECT  SALARIO FROM CADFUN WHERE DEPTO=5 

/* 11. Quantos funcion�rios est�o no departamento 5? */

SELECT COUNT(DEPTO) FROM CADFUN WHERE DEPTO=5

/* 12. Qual � o maior valor de sal�rio pago no departamento 5? */
SELECT MAX (SALARIO) FROM CADFUN WHERE DEPTO=5
/* 13. Quanto a empresa paga para todos os analistas? */

SELECT SUM(SALARIO)FROM CADFUN  WHERE FUNCAO='ANALISTA'

/* 14. Quanto a empresa paga para os analistas do departamento 2? */

SELECT SUM(SALARIO)FROM CADFUN  WHERE FUNCAO='ANALISTA' AND DEPTO=2

/* 15. Listar os nomes de todos os funcion�rios admitidos no dia 10 de qualquer m�s*/

SELECT NOME FROM CADFUN WHERE DATEPART(DAY,ADMISSAO)=10
/* 16. Listar os nomes e as datas de admissao de todos os funcion�rios admitidos entre o dia 
5 e o dia 10 de qualquer m�s*/

SELECT NOME,ADMISSAO FROM CADFUN WHERE DATEPART(DAY,ADMISSAO) >=5 AND DATEPART(DAY,ADMISSAO)<=10 


/* 17. Listar os nomes e as datas de admissao de todos os funcion�rios admitidos entre o dia 
5 e o dia 10 de qualquer m�s ordenado de forma ascendente por data*/

SELECT NOME,ADMISSAO FROM CADFUN WHERE DATEPART(DAY,ADMISSAO) >=5 AND DATEPART(DAY,ADMISSAO)<=10 ORDER BY ADMISSAO ASC

/* 18. Listar os nomes e as datas de admissao de todos os funcion�rios admitidos entre o dia 
5 e o dia 10 de qualquer m�s ordenado de forma descendente por data*/

SELECT NOME,ADMISSAO FROM CADFUN WHERE DATEPART(DAY,ADMISSAO) >=5 AND DATEPART(DAY,ADMISSAO)<=10 ORDER BY ADMISSAO DESC


/* 19. Listar todos os funcion�rios admitidos antes do dia 20 de setembro de 2006*/

SELECT NOME,ADMISSAO FROM CADFUN WHERE ADMISSAO <= '20-09-2006'

/* 20. Listar os nomes, datas de admissao e os nomes dos meses de admiss�o de todos os 
funcion�rios do departamento 5*/
SELECT NOME,ADMISSAO,DATENAME(MONTH,ADMISSAO) AS M�S FROM CADFUN WHERE DEPTO=5



/* 21. Listar os nomes e os departamentos de todos os funcion�rios
em letras min�sculas dos departamentos 3 e 5 */ 

SELECT LOWER(NOME) FROM CADFUN WHERE DEPTO=5 OR DEPTO=3

/* 22. Listar os nomes, os departamentos e as datas de admiss�o de todos os funcion�rios
admitidos entre o dia 5 e o dia 10 de qualquer m�s dos departamentos 3 e 5*/ 

SELECT NOME,DEPTO,ADMISSAO FROM CADFUN WHERE DEPTO=5 OR DEPTO=3 AND DATEPART(DAY,ADMISSAO) >=5 AND DATEPART(DAY,ADMISSAO)<=10 


/* 23. Listar os nomes, os departamentos, fun��es e as datas de admiss�o de todos os funcion�rios
admitidos entre o dia 1� e o dia 15 que sejam analistas*/ 

SELECT NOME,DEPTO,FUNCAO,ADMISSAO FROM CADFUN WHERE FUNCAO='ANALISTA' AND  (DATEPART(DAY,ADMISSAO) >=1 AND DATEPART(DAY,ADMISSAO)<=15 )


/* 24. Listar os nomes, os departamentos, fun��es e as datas de admiss�o de todos os funcion�rios
admitidos entre os meses de maio e agosto de qualquer m�s que sejam analistas*/ 

SELECT NOME,DEPTO,FUNCAO,ADMISSAO FROM CADFUN WHERE FUNCAO='ANALISTA' AND (DATEPART(month,ADMISSAO) >=5 AND DATEPART(month,ADMISSAO)<=8 )


/* 25. Listar os nomes, os departamentos, fun��es e as datas de admiss�o de todos os funcion�rios
admitidos entre os meses de maio e agosto de qualquer m�s que n�o sejam analistas*/ 

SELECT NOME,DEPTO,FUNCAO,ADMISSAO FROM CADFUN WHERE FUNCAO <>'ANALISTA' AND (DATEPART(month,ADMISSAO)>=5 AND DATEPART(month,ADMISSAO)<=8 )


/* 26. Quantos funcion�rios foram admitidos no m�s de julho?*/ 

SELECT COUNT(*)AS ADMISSAO FROM CADFUN WHERE MONTH(ADMISSAO)= 7

SELE






