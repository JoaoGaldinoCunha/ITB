create database ITB2
use ITB2
create table aluno(
COD_ALUNO int primary key,
NOME varchar(45),
DATA_NASC date)


INSERT INTO ALUNO VALUES ( 1,'ANTONIO FERREIRA','15/05/1990')
INSERT INTO ALUNO VALUES ( 2,'Laura Cervantes','01/02/1980')
INSERT INTO ALUNO VALUES ( 3,'Olga Aragão Medina','10/03/1995')
INSERT INTO ALUNO VALUES ( 4,'Joana Olívia Molina','08/01/2005')
INSERT INTO ALUNO VALUES ( 5,'Joana Wendy de Marés','14/07/2004')
INSERT INTO ALUNO VALUES ( 6,'Diego Domingues de Galindo','15/09/2009')
INSERT INTO ALUNO VALUES ( 7,'Fabiano Barros de Fonseca','18/07/1998')
INSERT INTO ALUNO VALUES ( 8,'Thales Aragão de Caldeira','25/08/2010')
INSERT INTO ALUNO VALUES ( 9,'Humberto Delvalle','17/10/2001')
INSERT INTO ALUNO VALUES ( 10,'Maísa Azevedo de Gil','28/11/2007')
INSERT INTO ALUNO VALUES ( 11,'Josefina Marlene Neves de Rico','01/12/1975');

select * from aluno;

select NOME from aluno
where COD_ALUNO >=5;;

select nome,data_nasc from aluno;

select nome,data_nasc from aluno where COD_ALUNO >5

select * from aluno
where COD_ALUNO between 4 and 7

select NOME,DATA_NASC from aluno
where DATA_NASC between '1900-01-01'and '2005-01-01'

select NOME,DATA_NASC from aluno;
select DATEDIFF (YY,'19/02/2005','19/02/2024')

/*CRIANDO TABELAS */
SINTAXE:
/*
<create table <nome da tabela>(
<coluna1> <tipo dado1> primary key indentity (x,y), x=inicio  e y= incremento(de quanto em quanto vai aumentar)
<coluna2> <tipo dado2 NULL,>
<coluna3> <tipo dado3 NOT NULL>
<coluna4> <tipo dado4 NOT NULL,>
..)

exemplo:
create table categoria (
codigo int indetity(1,2),
descri varchar(20)
)

ASSIM O CODIGO VAI CRESCER DE 2 EM 2

INSERT INTO CATEGORIA VALUES('INFANTIL')
...
DELETE FROM CATEGORIA 
DELETA A TABELA MAS A ORDEM DO CODIGO NAO

TRUNCATE TABLE CATEGORIA
VOCE ZERA A TABELA DO ZERO

===============================================================================
INSERIDO DDOS NA TABELA 
SINTAXE:
insert into <nome_tabela> (<coluna1>,<coluna2><coluna3>...)
values (<dado1>,<dado2>,<dado3>
exemplo1
insert into aluno (cod_aluno,nome,data_nasc)
values(50,'Marcos_santos','18/02/2001'
numeros nao utilizar '' em dados numericos
somente alfa numericos e datas

exemplo2
insert into aluno (cod_aluno,nome)
values(51,'marcos barboza' 
*/