/* EXERCICIO LIVRARIA */
CREATE DATABASE LIVRARIA;

CREATE TABLE LIVROS (
	NOMELIVRO VARCHAR(30),
	NOMEAUTOR VARCHAR(30),
	SEXOAUTOR CHAR(1),
	NUMEROPAGINAS INT,
	NOMEEDITORA VARCHAR(20),
	VALORLIVRO FLOAT(6,2),
	UFEDITORA CHAR(2),
	ANOPUBLICACAO INT
);

INSERT INTO LIVROS VALUES ('SQL PARA LEIGOS','JOÃO NUNES','M',450,'ADDISON',98,'SP',2018),
						  ('RECEITAS CASEIRAS','CELIA TAVARES','F',210,'ATLAS',45,'RJ',2008),
						  ('PESSOAS EFETIVAS','EDUARDO SANTOS','M', 390,'BETA',78.99,'RJ',2008),
						  ('HABITOS SAUDÁVEIS','EDUARDO SANTOS','M',630,'BETA',150.98,'RJ',2019),
						  ('A CASA MARROM','HERMES MACEDO','M',250,'BUBBA',60,'MG',2016),
						  ('ESTACIO QUERID0','GERALDO FRANCISCO','M',310,'INSIGNIA',100,'ES',2015),
						  ('PRA SEMPRE AMIGAS','LEDA SILVA','F',510,'INSIGNIA',78.98,'ES',2013),
						  ('COPAS INESQUECÍVEIS','MARCO ALCANTRA','M',200,'LARSON',130.98,'RS',2018),
						  ('O PODER DA MENTE','CLARA MAFRA','F',120,'CONTINENTAL',56.58,'RS',2017);
						  
SELECT * FROM LIVROS;

SELECT NOMELIVRO, NOMEEDITORA FROM LIVROS;

SELECT NOMELIVRO, UFEDITORA FROM LIVROS 
WHERE SEXOAUTOR='M';

SELECT NOMELIVRO, NUMEROPAGINAS FROM LIVROS
WHERE SEXOAUTOR='F';

SELECT VALORLIVRO FROM LIVROS
WHERE UFEDITORA='SP';

SELECT * FROM LIVROS
WHERE SEXOAUTOR='M' AND (UFEDITORA='SP' OR UFEDITORA='RJ');