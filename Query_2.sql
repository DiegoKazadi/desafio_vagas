
--  Consulta com subquery   
SELECT TOP 10 *
       -- Cod_cand,
       -- Nome_cand,
       -- UltDtAtual_cand

    FROM [hrh-data].dbo.Candidatos WITH(NOLOCK)
    WHERE UltDtAtual_cand >= 2021-01-01
        --Descr_estadoMer IN
        (
            SELECT
                Sigla_estadomer,
                Descr_estadoMer
                FROM [hrh-data].dbo.Meridian_Cad_estados WITH(NOLOCK)
                WHERE Cod_estadoMer = 10
        )

SELECT TOP 10 * 
         FROM [hrh-data].dbo.Meridian_Cad_estados WITH(NOLOCK)

SELECT TOP 10 * 
         FROM [hrh-data].dbo.Meridian_Cad_estados WITH(NOLOCK)