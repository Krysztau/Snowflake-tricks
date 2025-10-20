SELECT

ALL_DDLS.VALUE
, ALL_DDLS.VALUE LIKE '%LANDED_COST_LATEST_DT%'  AS STRING_CONTAINS_MARKER  -- not perfect, I used semicolns in some comments, so can't use those either :/

FROM TABLE (SPLIT_TO_TABLE (GET_DDL ('SCHEMA', 'QA_DWH.PRESENTATION'), 'create or replace')  ) AS ALL_DDLS
