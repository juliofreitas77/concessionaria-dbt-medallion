SELECT
    id_veiculos,
    {{ safe_trim('nome') }} AS nome,
    {{ safe_trim('tipo') }} AS tipo,
    cast(valor as decimal(10,2)) AS valor,
    data_inclusao,
    data_atualizacao,
    current_timestamp AS _loaded_at
FROM
    pg_origem.public.veiculos