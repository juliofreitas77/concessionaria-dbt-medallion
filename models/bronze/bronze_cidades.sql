SELECT
    id_cidades,
    {{ safe_trim('cidade') }} AS cidade,
    id_estados,
    data_inclusao,
    data_atualizacao,
    current_timestamp AS _loaded_at
FROM
    pg_origem.public.cidades