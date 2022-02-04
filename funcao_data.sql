-- uso da função DATA

CREATE TABLE #Estudantes(
id_estudantes INT,
nome_estudante nvarchar(255),
matricula_estudante bigint,
data_nascimento date
)
-- inserir dados
INSERT INTO #Estudantes(id_estudantes, nome_estudante, matricula_estudante, data_nascimento) VALUES (001, 'Diego Kazadi', 1613081009, '1986-05-22')
INSERT INTO #Estudantes(id_estudantes, nome_estudante, matricula_estudante, data_nascimento) VALUES (002, 'Armiliana Soares', 0063581009, '1986-04-12')
INSERT INTO #Estudantes(id_estudantes, nome_estudante, matricula_estudante, data_nascimento) VALUES (003, 'Angeline Nascimento', 1513081009, '2015-11-17')
INSERT INTO #Estudantes(id_estudantes, nome_estudante, matricula_estudante, data_nascimento) VALUES (004, 'Alexia Martine', 1713081009, '2017-10-27')
INSERT INTO #Estudantes(id_estudantes, nome_estudante, matricula_estudante, data_nascimento) VALUES (005, 'Aliya Mitonga', 1913081009,'2019-12-16')
INSERT INTO #Estudantes(id_estudantes, nome_estudante, matricula_estudante, data_nascimento) VALUES (006, 'Esther Mulenga', 1913081056,'1980-01-16')
INSERT INTO #Estudantes(id_estudantes, nome_estudante, matricula_estudante, data_nascimento) VALUES (007, 'Valencia Luputa', 1913081088,'1990-11-10')
INSERT INTO #Estudantes(id_estudantes, nome_estudante, matricula_estudante, data_nascimento) VALUES (008, 'Patrick Kazadi', 1813081055,'2017-04-30')
INSERT INTO #Estudantes(id_estudantes, nome_estudante, matricula_estudante, data_nascimento) VALUES (009, 'Jonathan Kalunda', 1913044097,'2007-04-2')
INSERT INTO #Estudantes(id_estudantes, nome_estudante, matricula_estudante, data_nascimento) VALUES (010, 'Eliya Matondo', 1913081099,'2002-05-22')
INSERT INTO #Estudantes(id_estudantes, nome_estudante, matricula_estudante, data_nascimento) VALUES (011, 'Nadine Mukendi', 1913081044,'1997-11-12')
INSERT INTO #Estudantes(id_estudantes, nome_estudante, matricula_estudante, data_nascimento) VALUES (012, 'Manix Manionga', 1913083600,'1997-11-13')
INSERT INTO #Estudantes(id_estudantes, nome_estudante, matricula_estudante, data_nascimento) VALUES (013, 'Rebecca Muadi', 2330811222,'1997-11-09')
INSERT INTO #Estudantes(id_estudantes, nome_estudante, matricula_estudante, data_nascimento) VALUES (014, 'Jeanette Mitongo', 233081133,'1997-05-03')
INSERT INTO #Estudantes(id_estudantes, nome_estudante, matricula_estudante, data_nascimento) VALUES (015, 'Dan Santos', 000081133,'1982-05-05')
INSERT INTO #Estudantes(id_estudantes, nome_estudante, matricula_estudante, data_nascimento) VALUES (016, 'Daniel Abella', 111081133,'1980-04-23')
INSERT INTO #Estudantes(id_estudantes, nome_estudante, matricula_estudante, data_nascimento) VALUES (017, 'Daniela Nascimento', 111081133,'1978-07-20')
INSERT INTO #Estudantes(id_estudantes, nome_estudante, matricula_estudante, data_nascimento) VALUES (018, 'Danilo', 111089685,'1980-04-23')
INSERT INTO #Estudantes(id_estudantes, nome_estudante, matricula_estudante, data_nascimento) VALUES (019, 'Armando Militão', 0063581987, '1986-04-01')
INSERT INTO #Estudantes(id_estudantes, nome_estudante, matricula_estudante, data_nascimento) VALUES (020, 'Danilo', 111089685,'1970-04-23')
INSERT INTO #Estudantes(id_estudantes, nome_estudante, matricula_estudante, data_nascimento) VALUES (021, 'Armando Militão', 0063581987, '1989-08-27')

select * from #estudantes

-- consultas 
select * from #Estudantes

SELECT GETDATE() 
SELECT DATEPART(YEAR, '2017-10-27') 

SELECT nome_estudante, data_nascimento,
	DATEDIFF(YEAR, data_nascimento, GETDATE()) as  'Idade Atual',
	DATEDIFF (MONTH,data_nascimento,GETDATE()) AS 'Meses vividos ate hoje',
	DATEDIFF (DAY,data_nascimento,GETDATE()) AS 'Dias vividos ate hoje'
FROM #Estudantes

-- consultas

SELECT   nome_estudante, data_nascimento as 'Geração Y' 
	FROM #Estudantes 
	WHERE data_nascimento BETWEEN '1980-01-01' AND '1990-01-01'  
ORDER BY data_nascimento 

SELECT   nome_estudante, data_nascimento as 'Geração Z' 
	FROM #Estudantes 
	WHERE data_nascimento BETWEEN '1990-01-01' AND '2000-01-01'  
ORDER BY data_nascimento 

SELECT   nome_estudante, data_nascimento as 'Millenium' 
	FROM #Estudantes 
	WHERE data_nascimento BETWEEN '2000-01-01' AND '2017-01-01'  
ORDER BY nome_estudante 

-- uso de CASE com operadores lógicos

SELECT  nome_estudante, data_nascimento,  
CASE
    WHEN DATEPART(YEAR, '1980-01-01') >= 1980 OR DATEPART(YEAR, '1990-01-01') = 1990 THEN  'Geração Y'
    WHEN DATEPART(YEAR, '1990-01-01') >= 1990 OR DATEPART(YEAR, '2000-01-01') = 2000 THEN  'Geração Z'
    WHEN DATEPART(YEAR, '2000-01-01') >= 2000 OR DATEPART(YEAR, '2017-01-01') = 2017 THEN  'Millenium'
    ELSE 'Geração não encontrada.'
    	END AS  TipoDeGeração
FROM #Estudantes

    
SELECT  nome_estudante, data_nascimento,  
CASE    
    WHEN data_nascimento >= 1990 AND data_nascimento = 2000 THEN  'Geração Z'
    WHEN data_nascimento >= 2000 AND data_nascimento = 2017 THEN  'Millenium'
    END AS  TipoDeGeração
FROM #Estudantes

-- uso de LIKE
-- buscar palavra
começam com D, 
começam com AR.
terminam com s
contenham A e M.
que nao contenham X


SELECT nome_estudante
	FROM #Estudantes
	WHERE nome_estudante LIKE 'D%'

	
SELECT nome_estudante
	FROM #Estudantes
	WHERE nome_estudante LIKE 'AR%'
	

SELECT nome_estudante
	FROM #Estudantes
	WHERE nome_estudante LIKE '%S'
	
SELECT  nome_estudante,  
CASE
    WHEN nome_estudante LIKE 'D%' THEN  'começa com D'
    WHEN nome_estudante LIKE 'AR%' THEN  'começa com AR'
    WHEN nome_estudante LIKE '%S' THEN  'termina com S'
    WHEN nome_estudante LIKE '%A%' AND nome_estudante LIKE '%M%' THEN  'contenha A e M'
    WHEN nome_estudante NOT LIKE '%X%' THEN  'que nao contenham X'
    ELSE 'Não encontrado'
    	END AS  usandoLIKE
FROM #Estudantes

SELECT nome_estudante
	FROM #Estudantes
	WHERE nome_estudante LIKE '%A%' AND nome_estudante LIKE '%M%'

	
SELECT nome_estudante
	FROM #Estudantes
	WHERE nome_estudante NOT LIKE '%x%' 