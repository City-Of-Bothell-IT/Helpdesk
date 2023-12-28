USE TI80_DATA

SELECT
dbo.TASKS.WO_NUM as 'Work Order Number',
dbo.TASKS.RESPONS as 'Technician',
dbo.TASKS.TYPE as 'Category 1',
dbo.TASKS.WOTYPE2 as 'Category 2',
dbo.TASKS.WOTYPE3 as 'Category 3',
dbo.TASKS.REQUEST as 'Requestor',
dbo.TASKS.REQDATE as 'Request Date',
--dbo.TASKS.RESPONDEDBY as 'Also Technician??',
dbo.TASKS.TASK as 'Ticket Subject',
dbo.TASKS.DESCRIPT as 'Ticket Body',
dbo.TASKS.NOTE as 'Ticket closing note'
--dbo.TASKS.WorkOrderStatusId as 'Status number??'

FROM dbo.TASKS


WHERE
--no closed date - shows too many
--dbo.TASKS.CLSDDATE IS NULL

--no completed date - kinda works, but toal still off
--dbo.TASKS.COMPLETED IS NULL
--AND dbo.TASKS.RESPONS IS NOT NULL
--AND dbo.TASKS.REQDATE IS NOT NULL

dbo.TASKS.WorkOrderStatusId IN (0,1,106,107,108,109,110,111,112,113)
AND dbo.TASKS.REQDATE IS NOT NULL
AND dbo.TASKS.RESPONS IS NOT NULL


ORDER BY 'Work Order Number' DESC