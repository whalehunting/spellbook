{{
    config(
        schema = 'tokens_flare'
        , alias = 'erc20'
        , tags = ['static']
        , materialized = 'table'
    )
}}

SELECT
    contract_address
    , symbol
    , decimals
FROM (VALUES
    (0x1D80c49BbBCd1C0911346656B529DF9E5c2F783d, 'WFLR', 18)
    , (0xE6505f92583103AF7ed9974DEC451A7Af4e3A3bE, 'JOULE', 18)
    , (0x12e605bc104e93B45e1aD99F9e555f659051c2BB, 'sFLR', 18)
    , (0xfF56Eb5b1a7FAa972291117E5E9565dA29bc808d, 'APS', 18)
    , (0x4A771Cc1a39FDd8AA08B8EA51F7Fd412e73B3d2B, 'USDX', 6)
    , (0x140D8d3649Ec605CF69018C627fB44cCC76eC89f, 'HLN', 18)
    , (0xFbDa5F676cB37624f28265A144A48B0d6e87d3b6, 'USDC.e', 6)
    , (0x0B38e83B86d491735fEaa0a791F65c2B99535396, 'USDT', 6)
    , (0x22757fb83836e3F9F0F353126cACD3B1Dc82a387, 'FLX', 18)
    , (0xC18f99CE6DD6278BE2D3f1e738Ed11623444aE33, 'POODLE', 18)
    , (0x96B41289D90444B8adD57e6F265DB5aE8651DF29, 'eUSDT', 6)
    , (0x932E691aA8c8306C4bB0b19F3f00a284371be8Ba, 'PHIL', 18)
    , (0xB5010D5Eb31AA8776b52C7394B76D6d627501C73, 'PFL', 18)
    , (0x908BB3E15040801fd29E542221A31Baaa7A4bE19, 'FODO', 18)
    , (0xe2bBf70A52Ee84837E9E2e245E5aFc560E259249, 'ZOINK', 18)
    , (0x1aa5282692398c078e71Fb3e4A85660d1BF8F586, 'BUNNY', 18)
    , (0xc6B19B06A92B337Cbca5f7334d29d45ec4d5E532, 'Moon', 18)
) as temp (contract_address, symbol, decimals)
