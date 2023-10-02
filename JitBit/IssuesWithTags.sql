USE JitbitHelpDesk

SELECT TOP (100)
    hdIssues.IssueID AS TICKET_NUMBER,
--    hdIssues.InstanceID,
    hdIssues.IssueDate AS ISSUE_CREATED_DATE,
    hdIssues.UserID,
    hdIssues.CategoryID,
    hdIssues.StartDate AS ISSUE_STARTED_DATE,
    hdIssues.ResolvedDate AS ISSUE_CLOSED_DATE,
    hdIssues.AssignedToUserID,
    hdIssues.Subject AS TICKET_SUBJECT,
--    hdIssues.Body,
--    hdIssues.UpdatedByUser,
--    hdIssues.UpdatedByPerformer,
--    hdIssues.UpdatedForTechView,
--    hdIssues.StatusID,
--    hdIssues.Priority,
--    hdIssues.TimeSpentInSeconds,
--    hdIssues.LastUpdated,
--    hdIssues.DueDate,
--    hdIssues.Origin,
--    hdIssues.FTS_filetype,
--    hdIssues.FTS_Body,
--    hdIssues.TimesReopened,
--    hdIssues.Rating,
--    hdIssues.LastUpdatedByUserID
    hdIssueTags.TagID

FROM dbo.hdIssues
LEFT JOIN dbo.hdIssueTags ON hdIssues.IssueID = hdIssueTags.IssueID




/*
PRIMARY TABLE OF TICKETS
JitbitHelpDesk.dbo.hdIssues

CONNECTOR TABLE - just two columns. TagID. IssueID.
JitbitHelpDesk.dbo.hdIssueTags

PRIMARY TAGS TABLE - TagID. Name. InstanceID.
JitbitHelpDesk.dbo.hdTags

*/