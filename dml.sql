/*
	DML - DATA MANIPULATION LANGUAGE
	DDL - DATA DEFINITION LANGUAGE
	DCL - DATA CONTROL LANGUAGE	
	TCL - TRANSACTION CONTROL LANGUAGE
*/

/*
	DML
	INSERT INTO ... VALUES...
	UPDATE ... SET ... WHERE ...
	DELETE FROM ... WHERE ...
*/

/*
	DDL
	CREATE TABLE ... ();
	
	ALTER TABLE
		ALTERAR O NOME DE UMA COLUNA
			* CHANGE
				ALTER TABLE <NOMETABELA>
				CHANGE <NOME_ATUAL> <NOVO_NOME> INT NOT NULL; 
	
		ALTERANDO O TIPO
			* MODIFY
				ALTER TABLE <NOMETABELA>
				MODIFY <NOME_COLUNA> VARCHAR(20) NOT NULL;
	
		ADICIONANDO COLUNAS
			ALTER TABLE <NOME_TABELA>
			ADD <NOVA_COLUNA> FLOAT(10,2) NOT NULL;
	
		APAGANDO UMA COLUNA
			ALTER TABLE <NOME_TABLE>
			DROP COLUMN <NOME_COLUNA>;
	
		ADICIONANDO UMA COLUNA NA ORDEM ESPECIFICA
			ALTER TABLE <NOMETABELA>
			ADD COLUMN <NOME_COLUNA> FLOAT(10,2) NOT NULL
			AFTER <COLUNA_REFERENCIA>;
			
			ALTER TABLE <NOMETABELA>
			ADD COLUMN <NOME_COLUNA> FLOAT(10,2) NOT NULL
			FIRST;
*/