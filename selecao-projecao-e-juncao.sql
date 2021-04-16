/* SELEÇÃO, PROJEÇÃO E JUNÇÃO */

	/*PROJEÇÃO -> É TUDO QUE VOCÊ QUER VER NA TELA */
	SELECT NOW() AS CLIENTE;
	SELECT 2 + 2 AS SOMA;
	SELECT 2 + 2 AS SOMA, NOME, NOW()
	FROM CLIENTE;
	
	/*SELEÇÃO -> É UM SUBCONJUNTO DO CONJUNTO TOTAL DE REGISTROS DE UMA TABELA
			  -> A CLAUSULA DE SELEÇÃO É O WHERE*/
	SELECT NOME, SEXO, EMAIL
	FROM CLIENTE
	WHERE SEXO = 'F';
	
	SELECT NUMERO
	FROM TELEFONE
	WHERE TIPO = 'CEL';
	
	/*JUNÇÃO -> JOIN*/
	SELECT NOME, EMAIL, IDCLIENTE
	FROM CLIENTE;
	
	SELECT ID_CLIENTE, BAIRRO, CIDADE
	FROM ENDERECO;
	
	/* NOME, SEXO, BAIRRO, CIDADE */
		SELECT NOME, SEXO, BAIRRO, CIDADE
		FROM CLIENTE, ENDERECO
		WHERE IDCLIENTE = ID_CLIENTE;
		
		SELECT NOME, SEXO, BAIRRO, CIDADE
		FROM CLIENTE, ENDERECO
		WHERE IDCLIENTE = ID_CLIENTE AND SEXO = 'F';
		
		SELECT NOME, SEXO, BAIRRO, CIDADE /* PROJEÇÃO */
		FROM CLIENTE /* ORIGEM */
		INNER JOIN ENDERECO /* JUNÇÃO*/
		ON IDCLIENTE = ID_CLIENTE;
		WHERE SEXO = 'F'; /* SELEÇÃO */
		
		/* NOME, SEXO, EMAIL, TIPO, NUMERO*/
		SELECT NOME, SEXO, EMAIL, TIPO, NUMERO
		FROM CLIENTE
		INNER JOIN TELEFONE
		ON IDCLIENTE = ID_CLIENTE;
		
		/* JUNÇÃO DE MAIS DE DUAS TABELAS*/
		/* NOME, SEXO, BAIRRO, CIDADE, TIPO, NUMERO */
		SELECT CLIENTE.NOME, CLIENTE.SEXO, ENDERECO.BAIRRO, ENDERECO.CIDADE, TELEFONE.TIPO, TELEFONE.NUMERO
		FROM CLIENTE
		INNER JOIN ENDERECO
		ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
		INNER JOIN TELEFONE
		ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE;
		
		/* PONTEIRANDO COM ALIAS */
		SELECT C.NOME, C.SEXO, E.BAIRRO, E.CIDADE, T.TIPO, T.NUMERO
		FROM CLIENTE C
		INNER JOIN ENDERECO E
		ON C.IDCLIENTE = E.ID_CLIENTE
		INNER JOIN TELEFONE T
		ON C.IDCLIENTE = T.ID_CLIENTE;
		