-- Tabelas relacionadas
SELECT TOP 10 *  FROM [hrh-data].dbo.Candidatos WITH(NOLOCK)
WHERE UltDtAtual_cand >= 2021-01-01

-- classificar pela 1® coluna 
SELECT TOP 10 *  FROM [hrh-data].dbo.Vagas WITH(NOLOCK)
ORDER BY 1 DESC

SELECT TOP 10 *  FROM [hrh-data].dbo.[Cand-experiencia] WITH(NOLOCK)
ORDER BY 1 DESC

SELECT TOP 10 *  FROM [hrh-data].dbo.Meridian_Cad_cidades WITH(NOLOCK)
SELECT TOP 10 *  FROM [hrh-data].dbo.Meridian_Cad_estados WITH(NOLOCK)
SELECT TOP 10 *  FROM [hrh-data].dbo.Cad_paises WITH(NOLOCK)
SELECT TOP 10 *  FROM [hrh-data].dbo.[Cand-experiencia] WITH(NOLOCK)

-- busca da tabela [cand-experiencia]
select * from sys.tables where name like '%cand%exp%'

-- os candidatos e cidades
SELECT  
        COUNT(cod_cand) AS Qtde_candidatos,
        CodCidade_cand,
        UltCargo_exp,
        DescrPaisEstadoCidade_cidadeMer

        INTO #candidatos_cidades 

        FROM [hrh-data].dbo.candidatos WITH(NOLOCK)
            INNER JOIN [hrh-data].dbo.Cad_paises WITH(NOLOCK)
                ON Cod_pais = CodPais_cand
            INNER JOIN [hrh-data].dbo.Meridian_Cad_estados WITH(NOLOCK)
                ON Cod_estadoMer = CodUF_Cand
            INNER JOIN [hrh-data].dbo.Meridian_Cad_cidades WITH(NOLOCK)
                ON CodCidade_cand = Cod_cidadeMer
            LEFT JOIN [hrh-data].dbo.[Cand-experiencia] WITH (NOLOCK)
                ON CodCand_exp = Cod_cand 
        WHERE UltDtAtual_cand >= 2021-01-01
GROUP BY CodCidade_cand, UltCargo_exp, DescrPaisEstadoCidade_cidadeMer

 
SELECT  TOP 10 * FROM #candidatos_cidades  
ORDER BY 1 DESC
-- vagas_cidades (Que não tem candidatos)

SELECT
        COUNT(Cod_vaga) As Qtde_vagas,
        Cargo_vaga,
        CodCidade_vaga,
        DescrPaisEstadoCidade_cidadeMer
        
        INTO #vagas_cidades 
        FROM  VAGAS
            LEFT JOIN [hrh-data].dbo.Meridian_Cad_cidades
                ON CodCidade_vaga = Cod_cidadeMer
            WHERE VeiculacaoSuspensa_vaga = 0
                AND DtInicioWeb_vaga <= GetDate()
                AND DtExpiracaoWeb_vaga >= GetDate() 
                AND (Tipo_vaga = 2 or (Tipo_vaga = 1 and QtdeRespCand_vaga < QtdeMaxResp_vaga))
GROUP BY Cargo_vaga, CodCidade_vaga, DescrPaisEstadoCidade_cidadeMer

SELECT TOP 10 * FROM #vagas_cidades
SELECT TOP 10 * FROM #candidatos_cidades 

-- os cargos de candidatos que não tem vagas, onde cargo retorna nulo.
SELECT *                
        FROM #candidatos_cidades
            LEFT JOIN #vagas_cidades
               ON Cargo_vaga = UltCargo_exp
    WHERE Cargo_vaga IS NULL 

-- os cargos de vagas que não tem candidatos

SELECT 
        --COUNT(Qtde_vagas) AS Qtde_vagas,
        --UltCargo_exp
        *
        FROM #vagas_cidades
            LEFT JOIN #candidatos_cidades
                ON CodCidade_cand = CodCidade_vaga
        WHERE Cargo_vaga IS Null
-- GROUP BY Qtde_vagas, UltCargo_exp