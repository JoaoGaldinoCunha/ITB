CREATE DATABASE EDUCATECH
USE EDUCATECH
CREATE TABLE INSTRUTOR(
ID_INSTRUTOR INT PRIMARY KEY,
RG INT,
NOME VARCHAR(45),
NASCIMENTO DATE,
TITULACAO INT)

CREATE TABLE TELEFONE_INSTUTOR(
IDTELEFONE INT PRIMARY KEY,
NUMERO INT,
TIPO VARCHAR(45),
INSTRUTOR_IDINSTRUTOR INT
)
CREATE TABLE ALUNO(
CODMATRICULA int primary key,
TURMA_IDTURMA INT,
DATAMATRICULA DATE,
NOME VARCHAR(45),
ENDERECO TEXT,
TELEFONE INT,
DATANASCIMENTO DATE ,
ALTURA FLOAT,
PESO INT
)

CREATE TABLE TURMA(
IDTURMA INT PRIMARY KEY,
HORARIO TIME,
DURACAO INT,
DATAINICIO DATE,
DATAFILM DATE,
ATIVIDADE_IDATIVIDADE INT,
INSTRUTOR_IDINSTRUTOR INT
)

CREATE TABLE ATIVIDADE(
IDATIVIDADE INT PRIMARY KEY,
NOME VARCHAR(100)
)

CREATE TABLE CHAMADA(
IDCHMADA INT PRIMARY KEY,
DATA DATE,
PRESENTE BIT,
MATRICULA_ALUNO_CODMATRICULA INT,
MATRICULA_TURMA_IDTURMA INT
)
CREATE TABLE MATRICULA(
ALUNO_CODMATRICULA INT,
TURMA_IDTURMA INT,
CONSTRAINT PK_123 PRIMARY KEY (ALUNO_CODMATRICULA,TURMA_IDTURMA)
)







ALTER TABLE  TELEFONE_INSTUTOR
ADD CONSTRAINT FK_TELEFONE_INSTUTOR
FOREIGN KEY(INSTRUTOR_IDINSTRUTOR)
REFERENCES INSTRUTOR (ID_INSTRUTOR)

ALTER TABLE TURMA
ADD CONSTRAINT FK_ATIVIDADE_IDATIVIDADE
FOREIGN KEY(ATIVIDADE_IDATIVIDADE)
REFERENCES ATIVIDADE (IDATIVIDADE)

ALTER TABLE TURMA
ADD CONSTRAINT FK_INSTRUTOR_IDINSTRUTOR
FOREIGN KEY(INSTRUTOR_IDINSTRUTOR)
REFERENCES INSTRUTOR (ID_INSTRUTOR)

ALTER TABLE CHAMADA
ADD CONSTRAINT FK_ID_P_TURMA
FOREIGN KEY(MATRICULA_TURMA_IDTURMA)
REFERENCES TURMA (IDTURMA)

ALTER TABLE CHAMADA
ADD CONSTRAINT FK_MATRICULA_P_ALUNOO
FOREIGN KEY(MATRICULA_ALUNO_CODMATRICULA)
REFERENCES MATRICULA (ALUNO_CODMATRICULA)

ALTER TABLE MATRICULA 
ADD CONSTRAINT FK_ALUNO_MATRICULA
FOREIGN KEY (ALUNO_CODMATRICULA)
REFERENCES ALUNO(CODMATRICULA)

ALTER TABLE ALUNO
ADD CONSTRAINT FK_TURMA_MATRICULA
FOREIGN KEY (TURMA_IDTURMA)
REFERENCES TURMA (IDTURMA)

ALTER TABLE ALUNO 
ADD CONSTRAINT FK_ALUNO_TURMA
FOREIGN KEY(TURMA_IDTURMA)
REFERENCES TURMA (IDTURMA)

ALTER TABLE CHAMADA 
ADD CONSTRAINT FK_MATRICULA_TURMA
FOREIGN KEY(MATRICULA_ALUNO_CODMATRICULA,MATRICULA_TURMA_IDTURMA)
REFERENCES MATRICULA(ALUNO_CODMATRICULA,TURMA_IDTURMA)


ALTER TABLE MATRICULA 
ADD CONSTRAINT FK_TURMA_IDTURMA
FOREIGN KEY (TURMA_IDTURMA)
REFERENCES TURMA(IDTURMA)

ALTER TABLE MATRIUCLA 
ADD CONSTRAINT FK_OCDMAT_ALUNO_CODMAT
FOREIGN KEY (ALUNO_CODMATRICULA)
REFERENCES ALUNO(CODMATRICULA)

ALTER TABLE ALUNO 
ADD CONSTRAINT TURMAIDTURM_TURNA
FOREIGN KEY (TURMA_IDTURMA)
REFERENCES TURMA(IDTURMA)