SELECT
dbo.TASKS.WO_NUM as 'Work Order Number',
dbo.TASKS.RESPONS as 'Technician',
dbo.TASKS.TYPE as 'Category 1',
dbo.TASKS.WOTYPE2 as 'Category 2',
dbo.TASKS.WOTYPE3 as 'Category 3',
dbo.TASKS.REQUEST as 'Requester',
CONVERT(DATE, dbo.TASKS.REQDATE) as 'Request Date',
dbo.TASKS.TASK as 'Ticket Subject',
dbo.TASKS.DESCRIPT as 'Ticket Body',
dbo.TASKS.NOTE as 'Ticket closing note',
dbo.TASKS.HOURS as 'Hours',
CONVERT(DATE, dbo.TASKS.COMPLETED) as 'Ticket closing date'

FROM dbo.TASKS

WHERE
dbo.TASKS.REQDATE IS NOT NULL

--filter parameters
--WO number
AND (CONVERT(VARCHAR, dbo.TASKS.WO_NUM) LIKE '%'+ @WONumber + '%' OR @WONumber IS NULL OR @WONumber = '')
--Technician
AND (dbo.TASKS.RESPONS LIKE '%' + @Technician + '%' OR @Technician IS NULL OR @Technician = '')
--Subject
AND (dbo.TASKS.TASK LIKE '%' + @Subject + '%' OR @Subject IS NULL OR @Subject = '')
--date opened
AND (dbo.TASKS.REQDATE >= @ReqStartDate OR @ReqStartDate IS NULL)
AND (dbo.TASKS.REQDATE < DATEADD(day, 1, @ReqEndDate) OR @ReqEndDate IS NULL)
--date closed
AND (dbo.TASKS.COMPLETED >= @CompStartDate OR @CompStartDate IS NULL OR dbo.TASKS.COMPLETED IS NULL)
AND (dbo.TASKS.COMPLETED < DATEADD(day, 1, @CompEndDate) OR @CompEndDate IS NULL OR dbo.TASKS.COMPLETED IS NULL);