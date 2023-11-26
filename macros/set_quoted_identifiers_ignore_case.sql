{% macro set_quoted_identifiers_ignore_case() %}
    ALTER SESSION SET QUOTED_IDENTIFIERS_IGNORE_CASE = TRUE;
{% endmacro %}