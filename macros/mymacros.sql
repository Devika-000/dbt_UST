{% macro money() -%}
::number(16,4)
{%- endmacro %}

{% macro dol_eur(colm, deci) -%}
    round( 0.97 * {{ colm }}, {{ deci }})
{%- endmacro %}

{% macro dol_inr(colm, deci) -%}
    round( 92 * {{ colm }}, {{ deci }})
{%- endmacro %}