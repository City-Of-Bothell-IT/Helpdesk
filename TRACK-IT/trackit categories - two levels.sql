USE TI80_DATA

SELECT 
T1.TYPEID AS T1_TYPEID
,T1.TYPE AS T1_TYPE
,T1.PARENTID AS T1_PARENTID

,T2.TYPEID AS T2_TYPEID
,T2.TYPE AS T2_TYPE
,T2.PARENTID AS T2_PARENTID

--,T3.TYPEID AS T3_TYPEID
--,T3.TYPE AS T3_TYPE
--,T3.PARENTID AS T3_PARENTID

FROM dbo.TASKTYPE AS T2
    LEFT JOIN dbo.TASKTYPE AS T1 ON T2.PARENTID = T1.TYPEID
--    LEFT JOIN dbo.TASKTYPE AS T1 ON T2.PARENTID = T1.TYPEID

WHERE T1.PARENTID = '0'



--WHERE dbo.TASKTYPE.PARENTID = '0'

--ORDER BY 'TYPE NAME'



/*
1Type
2Subtype
3Category
*/