{{ config(
        schema = 'tokens_worldchain',
        alias = 'balances_daily_agg',
        materialized = 'view'
        )
}}

{{
    balances_enrich(
        balances_raw = ref('tokens_worldchain_balances_daily_agg_base'),
        daily=true,
    )
}}