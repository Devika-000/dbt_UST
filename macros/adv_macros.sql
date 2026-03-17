{% macro loaddata(pat, tbl, frm ) %}
{% set qry = 'COPY INTO  ' + tbl + ' FROM @' + pat + ' FILE_FORMAT = ' + frm %}
{{ run_query(qry) }}
{% endmacro %}

{% macro loaddata2(path, table, form) %}

{% set qry %}
COPY INTO mkmotors_dev.staging.stg_dealership
FROM @mkmotors_dev.staging.s3dealers
FILE_FORMAT = (FORMAT_NAME = MKMOTORS_DEV.STAGING.FF_CSV_NOHDR_DQ)
{% endset %}

{{ run_query(qry) }}

{% endmacro %}