-- criar tabelas
CREATE TABLE #Produtos(
cod_produto	INT PRIMARY KEY,
nome NVARCHAR(30),
Qtd_estoque BIGINT
)

CREATE TABLE #vendas(
cod_vendas INT PRIMARY KEY,
mes INT,
Qtde_vendas INT,
Ano INT,
codProduto_prod INT,
CONSTRAINT fk_ProdVenda FOREIGN KEY (codProduto_prod) REFERENCES #Produtos(cod_produto)
)


-- inserir valor nas tabelas
INSERT INTO #Produtos (cod_produto, nome, Qtd_estoque) VALUES (001, 'Feijão', 1200)
INSERT INTO #Produtos (cod_produto, nome, Qtd_estoque) VALUES (002, 'Arroz', 1500)
INSERT INTO #Produtos (cod_produto, nome, Qtd_estoque) VALUES (003, 'Macarão', 2200)
INSERT INTO #Produtos (cod_produto, nome, Qtd_estoque) VALUES (004, 'Fúba', 1200)
INSERT INTO #Produtos (cod_produto, nome, Qtd_estoque) VALUES (005, 'Mateiga', 15)
INSERT INTO #Produtos (cod_produto, nome, Qtd_estoque) VALUES (006, 'Milho verde', 2200)
INSERT INTO #Produtos (cod_produto, nome, Qtd_estoque) VALUES (007, 'Óleo', 10)
INSERT INTO #Produtos (cod_produto, nome, Qtd_estoque) VALUES (008, 'Ovo', 50)
INSERT INTO #Produtos (cod_produto, nome, Qtd_estoque) VALUES (009, 'Batata', 22)

INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (1, 1, 100, 2019, 001)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (2, 5, 24, 2015, 002)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (3, 8, 78, 2017, 003)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (4, 6, 10, 2012, 004)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (5, 6, 36, 2013, 005)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (6, 3, 22, 2011, 006)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (7, 6, 10, 2012, 007)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (8, 6, 36, 2014, 008)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (9, 3, 200, 2018, 009)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (10, 6, 10, 2012, 006)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (11, 6, 36, 2016, 005)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (12, 3, 200, 2010, 004)

INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (13, 2, 02, 2018, 003)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (14, 3, 15, 2018, 009)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (15, 4, 50, 2018, 008)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (16, 5, 200, 2018, 001)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (17, 6, 200, 2018, 001)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (18, 7, 198, 2018, 007)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (19, 8, 30, 2018, 002)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (20, 9, 20, 2018, 009)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (21, 10, 12, 2018, 001)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (22, 11, 45, 2018, 008)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (23, 12, 36, 2018, 003)

INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (24, 1, 100, 2010, 005)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (25, 2, 24, 2011, 006)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (26, 3, 78, 2012, 007)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (27, 4, 10, 2013, 008)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (28, 5, 36, 2014, 009)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (29, 6, 22, 2015, 001)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (30, 7, 10, 2016, 005)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (31, 8, 36, 2017, 003)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (32, 9, 200, 2018, 004)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (33, 10, 10, 2019, 004)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (34, 11, 36, 2016, 003)
INSERT INTO #vendas (cod_vendas, mes, Qtde_vendas, Ano, codProduto_prod) VALUES (35, 12, 200, 2010, 001)

SELECT * FROM #Produtos
SELECT * FROM #vendas ORDER BY mes 

SELECT 
		cod_vendas,
		codProduto_prod,
		Qtde_vendas,
		mes,
		Ano

		FROM #vendas
ORDER BY Ano 


SELECT 
	   nome,
	   mes,
	   ano,
	   Qtde_vendas
	FROM #vendas 
		RIGHT JOIN #Produtos
			ON cod_produto = codProduto_prod
ORDER BY ano

-- uso operador PIVOT invertendo linhas para colunas e colunas linhas 
-- considerando uma coluna pivô ano
SELECT *

	FROM
		(
			SELECT
				Ano,
				mes AS Mes_Vendas,
				sum(Qtde_vendas) AS Qtde_Vendidos
			
			FROM #vendas
				INNER join #Produtos
					ON cod_produto = codProduto_prod
				GROUP BY Ano,mes
		) em_linha
		PIVOT (sum(Qtde_vendidos) FOR Ano in ([2010],[2011],[2012],[2013],[2014],[2015],[2016],[2017],[2018],[2019])) em_colunas
ORDER BY 1

