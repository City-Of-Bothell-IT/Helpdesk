USE TI80_DATA

SELECT
    TRACKIT_TYPE.TYPEID AS TYPE_NO
    ,TRACKIT_TYPE.TYPE AS TYPE_NAME
    ,TRACKIT_TYPE.PARENTID AS TYPE_PARENT
    ,TRACKIT_TYPE.HideInSelfService AS 'HIDDEN'


FROM dbo.TASKTYPE AS TRACKIT_TYPE

WHERE TYPE_PARENT = '0'


/*
1Type
2Subtype
3Category
*/