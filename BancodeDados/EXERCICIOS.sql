SELECT* FROM CLIENTE_W3
SELECT NOME,PAIS FROM CLIENTE_W3
SELECT NOME ,PAIS,COD_POSTAL,CIDADE FROM CLIENTE_W3
SELECT COD_CLIENTE,NOME_CONTATO,PAIS,ENDERECO FROM CLIENTE_W3

SELECT * FROM CLIENTE_W3
WHERE PAIS='BRAZIL'

SELECT * FROM CLIENTE_W3
WHERE PAIS='GERMANY'


SELECT * FROM CLIENTE_W3
WHERE CIDADE='MADRID'

 SELECT * FROM CLIENTE_W3
WHERE COD_CLIENTE='16'


 SELECT * FROM CLIENTE_W3
WHERE PAIS='BRAZIL'OR PAIS='FRANCE'

 SELECT * FROM CLIENTE_W3
WHERE COD_CLIENTE>=10 and COD_CLIENTE<=30

SELECT * FROM CLIENTE_W3
ORDER BY  NOME_CONTATO


