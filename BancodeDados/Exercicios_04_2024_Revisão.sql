/*
	Exercícios 004 - Revisão Comandos SQL e Consultas
*/ CREATE DATABASE LOJAODASROUPAS

--1 – Escreva o comando para criação da tabela PRODUTO.

	CREATE TABLE PRODUTO(
	CD_PRODUTO INT PRIMARY KEY,
	DS_PROD VARCHAR(45),
	VL_PROD DECIMAL(10,2),
	QT_PRODUTO INT
	) 

	SELECT  * FROM PRODUTO

--2 - Escreva os comandos para inserir os dados conforme mosntrado na figura da tabela Produto.
		INSERT INTO PRODUTO VALUES (100, 'CAMISA POLO', 60.0,12 )
		INSERT INTO PRODUTO VALUES (101, 'CAMISA BASICA', 25.0,8 )
		INSERT INTO PRODUTO VALUES (102, 'BERMUNDA JENS', 50.0,10 )
		INSERT INTO PRODUTO VALUES (103, 'MEIA SOCIAL', 15.0,20 )
		INSERT INTO PRODUTO VALUES (104, 'CAMISA MANGA CURTA', 45.99,7 )
		INSERT INTO PRODUTO VALUES (105, 'CAMISA MANGA LONGA', 70.0,14 )
--3 – Faça uma consulta que retorne os produtos que custam menos de R$ 50,00.
	
	SELECT * FROM PRODUTO WHERE VL_PROD<50

--4 – Escreva a instrução SQL para alterar a descrição da “BERMUDA XPTO” para “BERMUDA JEANS”.

	UPDATE PRODUTO
	SET DS_PROD='BERMUNDA XPTO' 
	WHERE DS_PROD='BERMUNDA JENS'

/*5 – Escreva a instrução SQL para cadastrar o produto abaixo:
Código = 106
Descrição = CALÇA JEANS
Valor = R$ 100,00
Quantidade = 15 */

INSERT INTO PRODUTO VALUES (106, 'CALÇA JENS', 100.0,15 )


--6 – Faça uma consulta que retorne o código, descrição e valor de qualquer registro que possua a palavra camisa.


SELECT CD_PRODUTO,DS_PROD,VL_PROD FROM PRODUTO WHERE DS_PROD LIKE '%CAMISA%'

--7 – Faça uma consulta que retorne todos os campos dos registros que possuem códigos 101, 103 e 105.


SELECT* FROM PRODUTO WHERE  CD_PRODUTO=101 OR CD_PRODUTO=103 OR CD_PRODUTO=105

--8 – Escreva o comando para exclusão do registro que possui código 104.

DELETE  PRODUTO
FROM PRODUTO
WHERE CD_PRODUTO=104
