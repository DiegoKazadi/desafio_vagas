-- 1 Realizar consulta retornando lista de candidatos agrupados por estado civil (casado, solteiro)

SELECT    
	Descr_estado_civil, COUNT(*) as Quantidades
FROM [hrh-data].dbo.Candidatos as c WITH(NOLOCK)
	INNER JOIN [hrh-data].dbo.CAD_ESTADO_CIVIL as e WITH(NOLOCK) ON c.CodEstadoCivil_cand = e.Cod_estado_civil
WHERE c.UltDtAtual_cand >= 2021-01-01
	GROUP BY Descr_estado_civil
	ORDER BY Quantidades DESC 
	
-- 2 Realizar consulta retornando lista de candidatos agrupados por cidade

SELECT  
	Descr_cidadeMer, COUNT(*) Quantidades
FROM [hrh-data].dbo.candidatos as c WITH(NOLOCK)
	INNER JOIN [hrh-data].dbo.MERIDIAN_CAD_CIDADES as m WITH(NOLOCK) ON c.codcidade_cand = m.cod_cidadeMer
WHERE c.UltDtAtual_cand >= 2021-01-01
	GROUP BY Descr_cidadeMer 
	ORDER BY Quantidades DESC 

-- 3 Realizar consulta retornando lista de candidatos agrupados por estado

SELECT  
	Descr_estadoMer, COUNT(*) Quantidades
FROM [hrh-data].dbo.Candidatos as c WITH(NOLOCK)
	INNER JOIN [hrh-data].dbo.MERIDIAN_CAD_ESTADOS as m WITH(NOLOCK) ON c.coduf_cand = m.cod_estadoMer
WHERE c.UltDtAtual_cand >= 2021-01-01
	GROUP BY Descr_estadoMer 
	ORDER BY Quantidades DESC 


-- 4 Realizar consulta retornando lista de candidatos agrupados por UF
SELECT  
	Descr_estadoMer, COUNT(*) Quantidades
FROM [hrh-data].dbo.Candidatos as c WITH(NOLOCK)
	INNER JOIN [hrh-data].dbo.MERIDIAN_CAD_ESTADOS as mce WITH(NOLOCK) ON c.codUF_cand = mce.Cod_estadoMer 
WHERE c.UltDtAtual_cand >= 2021-01-01 and CodPais_cand = 31
	GROUP BY Descr_estadoMer 
	ORDER BY Quantidades DESC
	
-- 4' Realizar consulta retornando lista de candidatos agrupados por UF
SELECT  
	Descr_estadoBR, COUNT(*) Quantidades
FROM [hrh-data].dbo.Candidatos as c WITH(NOLOCK)
	INNER JOIN [hrh-data].dbo.Cad_estadosBR as mce WITH(NOLOCK) ON c.codUF_cand = mce.Cod_estadoBR 
WHERE c.UltDtAtual_cand >= 2021-01-01 and CodPais_cand = 31
	GROUP BY Descr_estadoBR 
	ORDER BY Quantidades desc 
	
-- 5 Realizar consulta retornando lista de candidatos agrupados por Pais de moradia

SELECT  
	Descr_pais, COUNT(*) Quantidades
FROM [hrh-data].dbo.Candidatos as c WITH(NOLOCK)
	INNER JOIN [hrh-data].dbo.Cad_paises as cp WITH(NOLOCK) ON c.codpais_cand = cp.Cod_pais 
WHERE c.UltDtAtual_cand >= 2021-01-01
	GROUP BY Descr_pais
	ORDER BY Descr_pais


-- 6 Realizar consulta retornando lista de candidatos agrupados por Pais de Nascimento

SELECT  
	Descr_pais, COUNT(*) Quantidades
FROM [hrh-data].dbo.Candidatos as c WITH(NOLOCK)
	INNER JOIN [hrh-data].dbo.Cad_paises as cp WITH(NOLOCK) ON c.codnacion_cand = cp.Cod_pais 
WHERE c.UltDtAtual_cand >= 2021-01-01
	GROUP BY Descr_pais
	ORDER BY Descr_pais

--visualizar cad_paises
SELECT TOP 10 * FROM [hrh-data].dbo.Cad_paises as p 


-- 7 Realizar consulta retornando lista de candidatos agrupados por formacao

SELECT  
	Descr_formMax, COUNT(*)
FROM [hrh-data].dbo.Candidatos as c WITH(NOLOCK)
	INNER JOIN [hrh-data].dbo.Cad_formacaomax as cf WITH(NOLOCK) ON c.codformmax_cand = cf.Cod_formMax 
WHERE c.UltDtAtual_cand >= 2021-01-01
	GROUP BY Descr_formMax
	ORDER BY Descr_formMax

	
-- 8 Realizar consulta retornando lista de candidatos agrupados por regiao

SELECT  
	regiao_estadoBR, COUNT(*) Quantidade
FROM [hrh-data].dbo.Candidatos as c WITH(NOLOCK)
	INNER JOIN [hrh-data].dbo.[CAND-REGIOES] as cr WITH(NOLOCK) ON c.Cod_cand = cr.codcand_regcand 
	INNER JOIN [hrh-data].dbo.Meridian_Cad_estadosBR mce ON c.CodUF_cand = mce.Cod_estadosBR
WHERE c.UltDtAtual_cand >= 2021-01-01
	GROUP BY regiao_estadoBR
	ORDER BY regiao_estadoBR
	
SELECT  
	regiao_estadoBR, COUNT(*) 
FROM [hrh-data].dbo.Candidatos as c WITH(NOLOCK)
	INNER JOIN [hrh-data].dbo.Cad_estadosBR as mce WITH(NOLOCK) ON c.codUF_cand = mce.Cod_estadoBR 
WHERE c.UltDtAtual_cand >= 2021-01-01
	GROUP BY regiao_estadoBR 
	ORDER BY regiao_estadoBR


-- 9 Realizar consulta retornando lista de candidatos agrupados por nacionalidade 

SELECT  
	Descr_nacion, COUNT(*) Quant_candidatos
FROM [hrh-data].dbo.Candidatos as c WITH(NOLOCK)
	INNER JOIN [hrh-data].dbo.Cad_Nacionalidades  as n WITH(NOLOCK) ON c.CodNacion_cand = n.CodPais_nacion 
WHERE c.UltDtAtual_cand >= 2021-01-01
	GROUP BY Descr_nacion
	ORDER BY  Quant_candidatos DESC

--
SELECT * FROM [hrh-data].dbo.candidatos as cn WITH(NOLOCK)
SELECT * FROM [hrh-data].dbo.cad_estado_civil as etc WITH (NOLOCK)
SELECT * FROM [hrh-data].dbo.Meridian_Cad_cidades as mce WITH(NOLOCK)
SELECT * FROM [hrh-data].dbo.Meridian_Cad_estados as mce WITH(NOLOCK)
SELECT * FROM [hrh-data].dbo.cad_estadosBR as ceb WITH(NOLOCK)
SELECT * FROM [hrh-data].dbo.cad_paises as cp WITH (NOLOCK)
SELECT * FROM [hrh-data].dbo.cad_formacaoMax as cfm WITH (NOLOCK)
SELECT * FROM [hrh-data].dbo.[CAND-REGIOES] as cr WITH (NOLOCK)
SELECT * FROM [hrh-data].dbo.Cad_Nacionalidades as cn WITH(NOLOCK)

 

--sp_help [CAND-REGIOES] 
--sp_help cad_estadosBR