SELECT Produto.nome,
Produto.descricao,
Produto.preco,
Categoria.nome
FROM Produto INNER JOIN Categoria
ON categoria_id = categoria_id

select * from Categoria
select * from Produto

select * from ProdutoDestaque

SELECT Produto.nome,
Produto.descricao,
Produto.preco,
Categoria.nome,
ProdutoDestaque.dataCad
FROM Produto 
INNER JOIN Categoria
ON (produto.categoria_id = categoria.id)
left join ProdutoDestaque 
on Produto.id= ProdutoDestaque.produto_id

--procedure
--trigger

--REVISÃO AVALIAÇÃO SEMESTRAL
--FUNCÇAO STRING
--LEN() = QUNATIDADE DE CARACTRES DA SRING

SELECT descricao,(LEN descricao) AS TS_CARACT FROM produto

select descricao ,SUBSTRING(descricao,10,5) from produto

--Funcoes de agregação
--SUM(),AVG(),MIN(),MAX,COUNT()

SELECT SUM(PRECO) FROM PRODUTO -- SOMA OS PREÇOS DE TODOS PRODUTOS
SELECT AVG(PRECO) FROM PRODUTO -- PREÇO MEDIO
SELECT MAX(PRECO) FROM PRODUTO -- VALOR MAIOR DE PRODUTO
SELECT MIN(PRECO) FROM PRODUTO -- VALOR MENOR DE PRODUTO
SELECT COUNT(PRECO) FROM PRODUTO -- QUANTIDADE  DE REGISTROS
--FUNCAO DE DATA E HORA
--DATEDIFF,YEAR,MONTH,DAY,DATENAME,GETNAME()

SELECT DATEDIFF(DAY,'1985-10-15','2024-06-12')
SELECT DATEDIFF(YEAR,'1985-10-15','2024-06-12')
SELECT DATEDIFF(MONTH,'1985-10-15','2024-06-12')
--TRIGGER
---------------------------
--CREATE TRIGGER 
CREATE TRIGGER TR_BKP_PESSOAS
ON PESSOAS FOR DELETE AS 
INSERT INTO PESSOAS_BKP SELECT * FROM deleted
----TABELA VINCULADA PESSOAS
----RELACIONADA A AÇÃO DELETE
-----------------------------

CREATE TRIGGER TR_BKP_PESSOAS
ON PESSOAS 
FOR UPDATE AS 
INSERT INTO PESSOAS_BKP SELECT * FROM deleted
------------------------------
--PROCEDURE 
CREATE PROCEDURE PROC_REL_VENDAS(@UF CHAR(2)) AS 
SELECT cliente.nome,cliente.estado,venda.duplic,venda.valor,venda.vencto
from cliente inner join  venda on cliente.codcli=venda.codcli
where cliente.estado=@UF
------------------------------
CREATE PROCEDURE TESTE_ AS 
SELECT * from Produto

exec teste

CREATE PROCEDURE TESTE1_ AS 
SELECT * from produto


CREATE PROCEDURE PRECO_PROD (@VALOR DECIMAL(10,2))AS 
SELECT * from Produto 
WHERE PRODUTO.PRECO = @VALOR

exec PRECO_PROD 10
--FUNÇÃO NUMERICAS 
--SELECT ABS()