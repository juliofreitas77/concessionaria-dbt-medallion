{# trim de espaços e converte string vazia para null #}
{% macro normalize_text(column_name) -%}
  nullif(
    trim(
        regexp_replace(cast({{ column_name }} as varchar), '\s+',' ', 'g')
    ),
    ''
  )
{%- endmacro %}

{# trim simples #}
{% macro safe_trim(column_name) -%}
  trim(cast({{ column_name }} as varchar))
{%- endmacro %}

{# converte para maiúsculo #}
{% macro normalize_upper(column_name) -%}
  upper({{ normalize_text(column_name) }})
{%- endmacro %}