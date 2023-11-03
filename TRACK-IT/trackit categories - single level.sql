USE TI80_DATA

SELECT
    dbo.TASKTYPE.TYPEID AS 'TYPE NO'
    ,dbo.TASKTYPE.TYPE AS 'TYPE NAME'
    ,dbo.TASKTYPE.PARENTID AS 'TYPE PARENT'
    ,dbo.TASKTYPE.HideInSelfService AS 'HIDDEN'


FROM dbo.TASKTYPE


WHERE dbo.TASKTYPE.PARENTID = '0'

ORDER BY 'TYPE NAME'



/*
1Type
2Subtype
3Category
*/