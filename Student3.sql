-- Calculate dashboard counts - This query generates the counts shown on the React dashboard:

SELECT
    (SELECT COUNT(*) FROM dbo.Projects) AS total_projects,
    (SELECT COUNT(*) FROM dbo.Tasks) AS total_tasks,
    (
        SELECT COUNT(*)
        FROM dbo.Tasks
        WHERE status = 'Pending'
    ) AS pending_tasks,
    (
        SELECT COUNT(*)
        FROM dbo.Tasks
        WHERE status = 'In Progress'
    ) AS in_progress_tasks,
    (
        SELECT COUNT(*)
        FROM dbo.Tasks
        WHERE status = 'Completed'
    ) AS completed_tasks;
GO


USE AIProjectMentor;
GO

SELECT
    DB_NAME() AS database_name,
    (SELECT COUNT(*) FROM dbo.Projects) AS project_count,
    (SELECT COUNT(*) FROM dbo.Tasks) AS task_count,
    (SELECT COUNT(*) FROM dbo.AIInteractions) AS ai_history_count;
GO