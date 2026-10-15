SELECT
    id_vendedores,
    {{ safe_trim('nome') }} AS nome,
    id_concessionarias,
    data_inclusao,
    data_atualizacao,
    current_timestamp AS _loaded_at
FROM
    pg_origem.public.vendedores