{{
  config(
    schema = 'eas_nova',
    alias = 'attestations',
    materialized = 'incremental',
    file_format = 'delta',
    incremental_strategy = 'merge',
    unique_key = ['schema_uid', 'attestation_uid']
  )
}}

{{
  eas_attestations(
    blockchain = 'nova',
    project = 'eas',
    version = '1',
    schema_column_name = 'schemaUID'
  )
}}
