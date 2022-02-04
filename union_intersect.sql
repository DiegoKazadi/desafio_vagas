--- uso de comandos UNION, INTERSECT, EXCEPT

-- criação de tabelas

CREATE TABLE #Professor_Facilitador(
id_professor int,
cpf nvarchar(14),
nome_professor nvarchar(255),
disciplina nvarchar(30),
contato int
)
select * FROM #Professor_facilitador

CREATE TABLE #Professor_Tecnico(
id_professor int,
cpf nvarchar(14),
nome_professor nvarchar(255),
disciplina nvarchar(30),
contato int
)

CREATE TABLE #Professor_Laboratorio(
id_professor int,
cpf nvarchar(14),
nome_professor nvarchar(255),
disciplina nvarchar(30),
contato int
)

CREATE TABLE #Professor_Comunicador(
id_professor int,
cpf nvarchar(14),
nome_professor nvarchar(255),
disciplina nvarchar(30),
contato int
)

-- inserindo valores
-- Tabela  #Professor_Facilitador
INSERT INTO #Professor_Facilitador (id_professor, cpf, nome_professor, disciplina, contato) VALUES (1, '000.111.222-33','Patrick Kazadi','Peinture',010020)
INSERT INTO #Professor_Facilitador (id_professor, cpf, nome_professor, disciplina, contato) VALUES (2, '111.222.333-01','Brunel Ngoyi','Anatomia',236096)
INSERT INTO #Professor_Comunicador (id_professor, cpf, nome_professor, disciplina, contato) VALUES (3, '602.000.151-02','Juliana Mbaxim','Santé',852003)
INSERT INTO #Professor_Facilitador (id_professor, cpf, nome_professor, disciplina, contato) VALUES (4, '444.266.666-03','Mapumba Dactania','Laboratorio',745369)
INSERT INTO #Professor_Facilitador (id_professor, cpf, nome_professor, disciplina, contato) VALUES (6, '141.998.777-04','José Carlos','Anatomia',789963)
INSERT INTO #Professor_Facilitador (id_professor, cpf, nome_professor, disciplina, contato) VALUES (7, '111.222.333-05','Jonas Musuampa','Linguagem Programação',283334)
INSERT INTO #Professor_Facilitador (id_professor, cpf, nome_professor, disciplina, contato) VALUES (8, '222.333.444-06','LuckMan Tambwe','Edicação Fisica',777996)
INSERT INTO #Professor_Facilitador (id_professor, cpf, nome_professor, disciplina, contato) VALUES (9, '333.444.555-07','Maximo','Algoritmo',858343)
INSERT INTO #Professor_Facilitador (id_professor, cpf, nome_professor, disciplina, contato) VALUES (10, '111.222.333-08','Carine Milolo','Informatica I',223336)
INSERT INTO #Professor_Facilitador (id_professor, cpf, nome_professor, disciplina, contato) VALUES (11, '898.333.444-09','Jacob Kalunda','Économia',663996)
INSERT INTO #Professor_Facilitador (id_professor, cpf, nome_professor, disciplina, contato) VALUES (12, '333.444.555-10','Ibuti Patrick','Energia',200333)
INSERT INTO #Professor_Facilitador (id_professor, cpf, nome_professor, disciplina, contato) VALUES (13, '565.555.666-11','Junior Mapumba','Biologia',635369)
INSERT INTO #Professor_Facilitador (id_professor, cpf, nome_professor, disciplina, contato) VALUES (14, '222.666.777-12','Carlos Alberot','Anatomia II',789963)

-- Tabela  #Professor_Tecnico
INSERT INTO #Professor_Tecnico (id_professor, cpf, nome_professor, disciplina, contato) VALUES (1, '000.111.222-00','Patrick Ukumu','Sociologia',223006)
INSERT INTO #Professor_Tecnico (id_professor, cpf, nome_professor, disciplina, contato) VALUES (2, '001.222.333-01','Mamie Butu','Logica I',553996)
INSERT INTO #Professor_Tecnico (id_professor, cpf, nome_professor, disciplina, contato) VALUES (3, '002.333.444-02','Dada Massangu','Francês',752332)
INSERT INTO #Professor_Tecnico (id_professor, cpf, nome_professor, disciplina, contato) VALUES (4, '003.444.555-03','Mimie Kasenga','Agronomia',535368)
INSERT INTO #Professor_Tecnico (id_professor, cpf, nome_professor, disciplina, contato) VALUES (5, '004.555.666-04','Mifie','Couture',769961)
INSERT INTO #Professor_Tecnico (id_professor, cpf, nome_professor, disciplina, contato) VALUES (6, '005.666.777-05','Elane Oliveira','Fisica I',113345)
INSERT INTO #Professor_Tecnico (id_professor, cpf, nome_professor, disciplina, contato) VALUES (7, '006.777.888-06','Antoinette','Geologia',112946)
INSERT INTO #Professor_Tecnico (id_professor, cpf, nome_professor, disciplina, contato) VALUES (8, '007.888.999-07','Julie Ilumbe','Teologia',952339)
INSERT INTO #Professor_Tecnico (id_professor, cpf, nome_professor, disciplina, contato) VALUES (9, '008.999.000-08','KapepaMaria ','Canto',123369)
INSERT INTO #Professor_Tecnico (id_professor, cpf, nome_professor, disciplina, contato) VALUES (10, '444.555.666-77','Junior Mapumba','Biologia',635368)
INSERT INTO #Professor_Tecnico (id_professor, cpf, nome_professor, disciplina, contato) VALUES (11, '555.666.777-88','José Carlos','Anatomia',789962)

-- Tabela  #Professor_Laboratorio
INSERT INTO #Professor_Laboratorio (id_professor, cpf, nome_professor, disciplina, contato) VALUES (1, '333.111.222-33','Jeanette Mitonga','Couture',223333)
INSERT INTO #Professor_Laboratorio (id_professor, cpf, nome_professor, disciplina, contato) VALUES (2, '555.333.444-55','Rebecca','Construção',663994)
INSERT INTO #Professor_Laboratorio (id_professor, cpf, nome_professor, disciplina, contato) VALUES (3, '666.444.555-66','Manix Maninga','História',852111)
INSERT INTO #Professor_Laboratorio (id_professor, cpf, nome_professor, disciplina, contato) VALUES (3, '002.333.444-02','Dada Massangu','Francês',752332)
INSERT INTO #Professor_Laboratorio (id_professor, cpf, nome_professor, disciplina, contato) VALUES (4, '003.444.555-03','Mimie Kasenga','Agronomia',535368)
INSERT INTO #Professor_Laboratorio (id_professor, cpf, nome_professor, disciplina, contato) VALUES (5, '004.555.666-04','Mifie','Couture',769961)
INSERT INTO #Professor_Laboratorio (id_professor, cpf, nome_professor, disciplina, contato) VALUES (6, '005.666.777-05','Elane Oliveira','Fisica I',113345)

-- Tabela #Professor_Comunicador
INSERT INTO #Professor_Comunicador (id_professor, cpf, nome_professor, disciplina, contato) VALUES (1, '111.222.333-44','Jonas Diemu','Politica',223337)
INSERT INTO #Professor_Comunicador (id_professor, cpf, nome_professor, disciplina, contato) VALUES (2, '222.333.444-55','Jacob Kalunda','Économia',113996)
INSERT INTO #Professor_Comunicador (id_professor, cpf, nome_professor, disciplina, contato) VALUES (3, '333.444.555-66','Julia Maxim','História',852133)
INSERT INTO #Professor_Comunicador (id_professor, cpf, nome_professor, disciplina, contato) VALUES (4, '444.555.666-77','Junior Mapumba','Biologia',635368)
INSERT INTO #Professor_Comunicador (id_professor, cpf, nome_professor, disciplina, contato) VALUES (5, '555.666.777-88','José Carlos','Anatomia',789962)

-- UNION  as colunas devem possuir mesmo tipo de dados e quantidades devem ser iguais

-- Tabela #Professor_Facilitador e #Professor Cominicador
SELECT id_professor, cpf, disciplina FROM #Professor_Facilitador 
	UNION 
SELECT id_professor, cpf, disciplina FROM #Professor_Comunicador 

-- Tabela #Professor_Facilitador , #Professor Cominicador e #Professor_Laboratorio
SELECT id_professor, cpf, disciplina FROM #Professor_Facilitador 
	UNION 
SELECT id_professor, cpf, disciplina FROM #Professor_Comunicador 
	UNION 
SELECT id_professor, cpf, disciplina FROM #Professor_Laboratorio 
	
-- UNION ALL, matém os valores duplicados 

-- Tabela #Professor_Facilitador , #Professor Cominicador e #Professor_Laboratorio
SELECT id_professor, cpf, disciplina FROM #Professor_Facilitador 
	UNION ALL
SELECT id_professor, cpf, disciplina FROM #Professor_Comunicador 
	UNION ALL
SELECT id_professor, cpf, disciplina FROM #Professor_Laboratorio 
	ORDER BY  id_professor 
	
-- As 4 Tabelas 
SELECT id_professor, cpf, disciplina FROM #Professor_Facilitador 
	UNION ALL
SELECT id_professor, cpf, disciplina FROM #Professor_Comunicador 
	UNION ALL
SELECT id_professor, cpf, disciplina FROM #Professor_Laboratorio 
	UNION ALL
SELECT id_professor, cpf, disciplina FROM #Professor_Tecnico 


-- INTERSECT retorna apenas os valores que se repetem entre tabelas

SELECT id_professor, cpf, disciplina FROM #Professor_Facilitador 
	INTERSECT
SELECT id_professor, cpf, disciplina FROM #Professor_Comunicador 

SELECT id_professor, cpf, disciplina FROM #Professor_Laboratorio 
	INTERSECT
SELECT id_professor, cpf, disciplina FROM #Professor_Tecnico 


SELECT id_professor, cpf, disciplina FROM #Professor_Comunicador 
	INTERSECT
SELECT id_professor, cpf, disciplina FROM #Professor_Tecnico 

-- EXCEPT retorna apenas as linhas que aparecem somente na primeira tabela.

SELECT id_professor, cpf, disciplina FROM #Professor_Comunicador 
	EXCEPT
SELECT id_professor, cpf, disciplina FROM #Professor_Tecnico 

SELECT id_professor, cpf, disciplina FROM #Professor_Laboratorio 
	EXCEPT
SELECT id_professor, cpf, disciplina FROM #Professor_Tecnico 