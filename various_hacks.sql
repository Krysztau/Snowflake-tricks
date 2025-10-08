-- you can use some string unctions on INTEGERS

-- you can usepreviously defined columns within the same SELECT statement

SELECT
-- USING_ALIAS_ON_THE_FLY || ' THIS SHOULD NOT BE ALLOWED'   --- THIS WON'T WORK
, YEAR(CURRENT_DATE()) || '/' || RIGHT(YEAR(CURRENT_DATE())+1,2) AS MY_STRING
, YEAR(CURRENT_DATE())-1 || '/' || RIGHT(YEAR(CURRENT_DATE()),2)
, MY_STRING || ' IS FISCAL YEAR' AS USING_ALIAS_ON_THE_FLY   --- THIS WORKS!!! WTF???


