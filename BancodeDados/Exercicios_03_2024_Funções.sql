/*
Exercícios 03 - FUNÇÕES SQL
MIF2AN
*/

/* 1. Quais são as quatro categorias de funções SQL? */

Função de Agregação,Função Escalares,Função Data e Hora, Função Analisticas

/* 2. Qual categoria de função é ideal para fazer cálculos matemáticos? */
Função de Agregação


/* 3. Qual categoria de função é ideal para realizar operações estatísticas? */

Função Analitica 

/* 4. Quais funções de agregação você conhece? */

SUM,AVG,COUNT,MAX E MIN

/* 5. Quais funções de data e hora você conhece? */
CURRENT_DATE,CURRENT_TIME,EXTRACT,DATE_PART

/* 6. Quais funções numéricas você conhece? */
RANK,ROW_NUMBER,LAG,LEAD


/* 7. Quais funções string você conhece? */

UPPER,LOWER,SUBSTRING,ROUND


/* 8. Qual é o número médio de filhos por funcionário da empresa? */

SELECT AVG(FILHOS) FROM CADFUN;


/* 9. Qual é o número médio de filhos por funcionário da empresa que pertence ao departamento 5? */

SELECT AVG(FILHOS) FROM CADFUN WHERE DEPTO=5;

/* 10. Qual é o valor de salários pagos aos funcionários do departamento 5? */

SELECT  SALARIO FROM CADFUN WHERE DEPTO=5 

/* 11. Quantos funcionários estão no departamento 5? */

SELECT COUNT(DEPTO) FROM CADFUN WHERE DEPTO=5

/* 12. Qual é o maior valor de salário pago no departamento 5? */
SELECT MAX (SALARIO) FROM CADFUN WHERE DEPTO=5
/* 13. Quanto a empresa paga para todos os analistas? */

SELECT SUM(SALARIO)FROM CADFUN  WHERE FUNCAO='ANALISTA'

/* 14. Quanto a empresa paga para os analistas do departamento 2? */

SELECT SUM(SALARIO)FROM CADFUN  WHERE FUNCAO='ANALISTA' AND DEPTO=2

/* 15. Listar os nomes de todos os funcionários admitidos no dia 10 de qualquer mês*/

SELECT NOME FROM CADFUN WHERE DATEPART(DAY,ADMISSAO)=10
/* 16. Listar os nomes e as datas de admissao de todos os funcionários admitidos entre o dia 
5 e o dia 10 de qualquer mês*/

SELECT NOME,ADMISSAO FROM CADFUN WHERE DATEPART(DAY,ADMISSAO) >=5 AND DATEPART(DAY,ADMISSAO)<=10 


/* 17. Listar os nomes e as datas de admissao de todos os funcionários admitidos entre o dia 
5 e o dia 10 de qualquer mês ordenado de forma ascendente por data*/

SELECT NOME,ADMISSAO FROM CADFUN WHERE DATEPART(DAY,ADMISSAO) >=5 AND DATEPART(DAY,ADMISSAO)<=10 ORDER BY ADMISSAO ASC

/* 18. Listar os nomes e as datas de admissao de todos os funcionários admitidos entre o dia 
5 e o dia 10 de qualquer mês ordenado de forma descendente por data*/

SELECT NOME,ADMISSAO FROM CADFUN WHERE DATEPART(DAY,ADMISSAO) >=5 AND DATEPART(DAY,ADMISSAO)<=10 ORDER BY ADMISSAO DESC


/* 19. Listar todos os funcionários admitidos antes do dia 20 de setembro de 2006*/

SELECT NOME,ADMISSAO FROM CADFUN WHERE ADMISSAO <= '20-09-2006'

/* 20. Listar os nomes, datas de admissao e os nomes dos meses de admissão de todos os 
funcionários do departamento 5*/
SELECT NOME,ADMISSAO,DATENAME(MONTH,ADMISSAO) AS MÊS FROM CADFUN WHERE DEPTO=5



/* 21. Listar os nomes e os departamentos de todos os funcionários
em letras minúsculas dos departamentos 3 e 5 */ 

SELECT LOWER(NOME) FROM CADFUN WHERE DEPTO=5 OR DEPTO=3

/* 22. Listar os nomes, os departamentos e as datas de admissão de todos os funcionários
admitidos entre o dia 5 e o dia 10 de qualquer mês dos departamentos 3 e 5*/ 

SELECT NOME,DEPTO,ADMISSAO FROM CADFUN WHERE DEPTO=5 OR DEPTO=3 AND DATEPART(DAY,ADMISSAO) >=5 AND DATEPART(DAY,ADMISSAO)<=10 


/* 23. Listar os nomes, os departamentos, funções e as datas de admissão de todos os funcionários
admitidos entre o dia 1º e o dia 15 que sejam analistas*/ 

SELECT NOME,DEPTO,FUNCAO,ADMISSAO FROM CADFUN WHERE FUNCAO='ANALISTA' AND  (DATEPART(DAY,ADMISSAO) >=1 AND DATEPART(DAY,ADMISSAO)<=15 )


/* 24. Listar os nomes, os departamentos, funções e as datas de admissão de todos os funcionários
admitidos entre os meses de maio e agosto de qualquer mês que sejam analistas*/ 

SELECT NOME,DEPTO,FUNCAO,ADMISSAO FROM CADFUN WHERE FUNCAO='ANALISTA' AND (DATEPART(month,ADMISSAO) >=5 AND DATEPART(month,ADMISSAO)<=8 )


/* 25. Listar os nomes, os departamentos, funções e as datas de admissão de todos os funcionários
admitidos entre os meses de maio e agosto de qualquer mês que não sejam analistas*/ 

SELECT NOME,DEPTO,FUNCAO,ADMISSAO FROM CADFUN WHERE FUNCAO <>'ANALISTA' AND (DATEPART(month,ADMISSAO)>=5 AND DATEPART(month,ADMISSAO)<=8 )


/* 26. Quantos funcionários foram admitidos no mês de julho?*/ 

SELECT COUNT(*)AS ADMISSAO FROM CADFUN WHERE MONTH(ADMISSAO)= 7

SELE






