-- criar tabela
CREATE TABLE #Estudantes(
id_estudantes INT,
nome_estudante nvarchar(255),
matricula_estudante bigint,
data_nascimento date
)

-- inserir dados na tabela #Estudantes
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

-- visualizar a tabela toda com todos campos
SELECT * FROM #Estudantes

-- selecionar apenas duas colunas
SELECT nome_estudante, matricula_estudante
    FROM  #Estudantes
ORDER BY nome_estudante

-- uso função STRING_AGG concatenando as variaveis
-- apenas tres colunas
SELECT STRING_AGG(nome_estudante, ',') AS Nome_Estudantes, 
       STRING_AGG(matricula_estudante, ',') AS Matricula,
       STRING_AGG(data_nascimento, ',') AS Data_Nascimento
    FROM #Estudantes 

-- com duas colunas
SELECT STRING_AGG(nome_estudante, ',') AS Nome_Estudantes, 
       STRING_AGG(data_nascimento, ',') AS Data_Nascimento
    FROM #Estudantes 

SELECT STRING_AGG(id_estudantes, ',') AS ID, 
       STRING_AGG(nome_estudante, ',') AS Nome
    FROM #Estudantes

-- com uma coluna
SELECT STRING_AGG(nome_estudante, ',') AS Nome_Estudantes
    FROM #Estudantes 


