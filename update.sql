/* UTILIZANDO O UPDATE PARA ATUALIZAR VALORES */

UPDATE CLIENTE SET EMAIIL = 'LILIAN@HOTMAIL.COM';

/* WHERE - VAI SER O SEU MELHOR AMIGO PRA VIDA INTEIRA */

UPDATE CLIENTE 
SET EMAIL = 'JOAO@IG.COM' 
WHERE NOME = 'JOAO';

UPDATE CLIENTE 
SET EMAIL = 'LILIAN@HOTMAIL.COM' 
WHERE NOME = 'LILIAN';

UPDATE CLIENTE 
SET EMAIL = 'JORGE@GMAIL.COM' 
WHERE NOME = 'JORGE';

/* COMMIT E ROLLBACK */