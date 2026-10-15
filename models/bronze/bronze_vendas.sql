select 
    id_vendas,
    id_veiculos,
    id_concessionarias,
    id_vendedores,
    id_clientes,
    cast(valor_pago as decimal(10,2)) AS valor_pago,
    data_venda,
    data_inclusao,
    data_atualizacao,
    current_timestamp AS _loaded_at
from
    pg_origem.public.vendas