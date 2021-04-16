/* AS FUNCOES DE AGREGACAO NUMERICAS*/

/* MAX - TRAZ O VALOR MA´XIMO DE UMA COLUNA */
SELECT MAX(FERVEREIRO) AS MAIOR_FEV
FROM VENDEDORES;

/* MIN - TRAZ O VALOR MINIMO DE UMA COLUNA */
SELECT MIN(FERVEREIRO) AS MENOR_FEV
FROM VENDEDORES;

/* AVG - TRAZ A MEDIA DOS VALORES DE UMA COLUNA */
SELECT AVG(FERVEREIRO) AS MEDIA_FEV
FROM VENDEDORES;

/* VARIAS FUNÇÕES */
SELECT MAX(JANEIRO) AS MAX_JAN,
	   MIN(JANEIRO) AS MIN_JAN,
	   AVG(JANEIRO) AS MEDIA_JAN
	   FROM VENDEDORES;
	   
/* TRUNCATE */
SELECT MAX(JANEIRO) AS MAX_JAN,
	   MIN(JANEIRO) AS MIN_JAN,
	   TRUNCATE(AVG(JANEIRO),2) AS MEDIA_JAN
	   FROM VENDEDORES;
	   
/* AGREGANDO COM SUM() */
SELECT SUM(JANEIRO) AS TOTAL_JAN
FROM VENDEDORES;

/* VENDAS POR SEXO */
SELECT SUM(MARCO) AS TOTAL_MARCO
FROM VENDEDORES
GROUP BY SEXO;