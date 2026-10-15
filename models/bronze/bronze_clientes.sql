SELECT
    id_clientes,
    {{ safe_trim('cliente') }} AS cliente,
    {{ safe_trim('endereco') }} AS endereco,
    id_concessionarias,
    data_inclusao,
    data_atualizacao,
    current_timestamp AS _loaded_at
FROM
    pg_origem.public.clientes