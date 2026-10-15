/*
    Bronze Layer - Estados
    A materialização vai acontecer com o resultado da query abaixo.
    Comando para executar a materialização: dbt run --select bronze_estados --profiles-dir . 
*/

SELECT
    id_estados,
    {{ safe_trim('estado') }} AS estado,
    {{ safe_trim('sigla') }} AS sigla,
    data_inclusao,
    data_atualizacao,
    current_timestamp AS _loaded_at
FROM
    pg_origem.public.estados