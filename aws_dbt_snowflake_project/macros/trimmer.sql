{% macro trimmer(column_name) %}
    {{ col_name | trim | upper }}
{% endmacro %}