SELECT
    id_concessionarias,
    {{ safe_trim('concessionaria') }} AS concessionaria,
    id_cidades,
    data_inclusao,
    data_atualizacao,
    current_timestamp AS _loaded_at
FROM
    pg_origem.public.concessionarias