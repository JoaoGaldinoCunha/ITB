SELECT * FROM cliente
SELECT * FROM venda

SELECT
cliente.NOME,
cliente.CIDADE,
cliente.ESTADO,
venda.VALOR,
venda.DUPLIC
FROM cliente JOIN VENDA ON cliente.CODCLI = venda.CODCLI
ORDER BY cliente.NOME



SELECT COUNT(cliente.NOME),CLIENTE.ESTADO FROM cliente GROUP BY cliente.ESTADO 

SELECT COUNT(venda.VALOR),cliente.ESTADO FROM cliente JOIN venda ON cliente.CODCLI = venda.CODCLI GROUP BY ESTADO