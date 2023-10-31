

SELECT * FROM crosstab('SELECT location,year, SUM(raindays) FROM rainfalls GROUP BY location, year ORDER BY location,year;') AS tab_ref_cruzada("location" TEXT, "2012" BIGINT, "2013" BIGINT, "2014" BIGINT, "2015" BIGINT, "2016" BIGINT, "2017" BIGINT);

-- SELECT * FROM crosstab(
-- 	'
-- 		SELECT
-- 			nome_aluno,
-- 			disciplina,
-- 			nota
-- 		FROM tb_nota
-- 		ORDER BY nome_aluno, disciplina;
-- 	'
-- ) AS tb_ref_cruzada(
-- 	nome VARCHAR(200),
-- 	biologia NUMERIC(10, 2),
-- 	historia NUMERIC(10, 2),
-- 	ingles NUMERIC(10, 2),
-- 	matematica NUMERIC(10, 2)
-- );

-- INSERT INTO tb_nota
-- (nome_aluno, disciplina, nota, data_obtencao) VALUES ('Ana', 'Matemática', 9, '2020-04-01'),
-- ('Ana', 'Inglês', 10, '2020-04-02'), ('Ana', 'Biologia', 8, '2020-04-03'),
-- ('Ana', 'História', 10, '2020-04-04'), ('João', 'Matemática', 7, '2020-04-01'),
-- ('João', 'Inglês', 10, '2020-04-02'), ('João', 'Biologia', 5, '2020-03-03'),
-- ('João', 'História', 7, '2020-04-04');

-- SELECT * FROM tb_nota
-- CREATE TABLE tb_nota(
-- 	cod_nota SERIAL PRIMARY KEY,
-- 	nome_aluno VARCHAR(200) NOT NULL,
-- 	disciplina VARCHAR(200) NOT NULL,
-- 	nota NUMERIC(10,2) NOT NULL,
-- 	data_obtencao DATE
-- );

-- CREATE EXTENSION IF NOT EXISTS tablefunc;

-- SELECT * FROM pg_extension