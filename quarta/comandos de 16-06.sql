SELECT * FROM ator LIMIT 10;
SELECT * FROM ator ORDER BY primeiro_nome LIMIT 20;
SELECT * FROM ator ORDER BY primeiro_nome DESC LIMIT 1;

SELECT ator_id AS Codigo, CONCAT(primeiro_nome,' ',ultimo_nome) AS Nome FROM ator LIMIT 10;
SELECT ator_id AS Codigo, CONCAT(primeiro_nome,' ',ultimo_nome) AS Nome FROM ator ORDER BY Nome LIMIT 10;

SELECT COUNT(*) FROM ator;
SELECT COUNT(*) FROM pagamento;
SELECT COUNT(DISTINCT cliente_id) FROM pagamento;

SELECT SUM(valor) AS Total FROM pagamento;
SELECT AVG(valor) AS Media FROM pagamento;
SELECT MIN(valor) AS Minimo FROM pagamento;
SELECT MAX(valor) AS Minimo FROM pagamento;

SELECT primeiro_nome FROM ator ORDER BY primeiro_nome LIMIT 20;
SELECT DISTINCT primeiro_nome FROM ator ORDER BY primeiro_nome LIMIT 10;

SELECT FOUND_ROWS();

SELECT CONCAT(primeiro_nome,' ',ultimo_nome) AS Nome FROM ator ORDER BY Nome;
SELECT CONCAT(primeiro_nome,' ',ultimo_nome) AS Nome INTO OUTFILE 'd:/temp/nomes.txt' FROM ator ORDER BY Nome;

SELECT * INTO OUTFILE 'd:/temp/atores.txt' FROM ator ORDER BY primeiro_nome;
SELECT * INTO OUTFILE 'd:/temp/atores.csv' FIELDS TERMINATED BY ';' FROM ator ORDER BY primeiro_nome;


SELECT filme_id, titulo FROM filme WHERE filme_id BETWEEN 10 AND 20;
SELECT filme_id, titulo FROM filme WHERE filme_id >= 10 AND filme_id <= 20;
SELECT filme_id, titulo FROM filme WHERE filme_id <= 10 OR filme_id >= 990;

SELECT filme_id, titulo FROM filme WHERE filme_id IN (3,5,7,8,10,34,56);
SELECT filme_id, titulo FROM filme WHERE filme_id IN (SELECT pais_id FROM pais);

SELECT titulo FROM filme WHERE titulo LIKE 'SA%';
SELECT titulo FROM filme WHERE titulo LIKE 'A%R';
SELECT titulo FROM filme WHERE titulo LIKE 'A%Z%';
SELECT titulo FROM filme WHERE titulo LIKE 'A%Z%S';

SELECT primeiro_nome FROM funcionario WHERE primeiro_nome NOT LIKE 'm%';

SELECT * FROM filme WHERE idioma_id != 1;


SELECT filme.titulo, idioma.nome FROM filme, idioma WHERE filme.idioma_id = idioma.idioma_id AND idioma.idioma_id != 1;

SELECT filme.titulo, idioma.nome FROM filme, idioma WHERE filme.idioma_id = idioma.idioma_id;
SELECT filme.titulo, idioma.nome FROM filme INNER JOIN idioma ON filme.idioma_id = idioma.idioma_id;
SELECT filme.titulo, idioma.nome FROM filme RIGHT JOIN idioma ON filme.idioma_id = idioma.idioma_id;


