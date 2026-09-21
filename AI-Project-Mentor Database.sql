-- create database, go tells the batch to execute
CREATE DATABASE AIProjectMentor;
GO

--verify the database

SELECT
    name,
    create_date,
    state_desc
FROM sys.databases
WHERE name = 'AIProjectMentor';
GO

-- select the databse

USE AIProjectMentor;
GO

-- create projects table

CREATE TABLE dbo.Projects
(
    project_id INT IDENTITY(1,1) PRIMARY KEY,
    project_name NVARCHAR(150) NOT NULL,
    description NVARCHAR(MAX) NOT NULL,
    technology_stack NVARCHAR(300) NOT NULL,
    created_at DATETIME2 NOT NULL
        CONSTRAINT DF_Projects_CreatedAt DEFAULT SYSDATETIME()
);
GO

-- create tasks table, on delete cascade means deleting a deleting a project automatically deleetes its tasks

CREATE TABLE dbo.Tasks
(
    task_id INT IDENTITY(1,1) PRIMARY KEY,
    project_id INT NOT NULL,
    title NVARCHAR(200) NOT NULL,
    description NVARCHAR(MAX) NOT NULL,
    priority NVARCHAR(20) NOT NULL
        CONSTRAINT DF_Tasks_Priority DEFAULT 'Medium',
    status NVARCHAR(30) NOT NULL
        CONSTRAINT DF_Tasks_Status DEFAULT 'Pending',
    ai_generated BIT NOT NULL
        CONSTRAINT DF_Tasks_AIGenerated DEFAULT 0,
    created_at DATETIME2 NOT NULL
        CONSTRAINT DF_Tasks_CreatedAt DEFAULT SYSDATETIME(),
    updated_at DATETIME2 NULL,

    CONSTRAINT CK_Tasks_Priority
        CHECK (priority IN ('Low', 'Medium', 'High')),

    CONSTRAINT CK_Tasks_Status
        CHECK (status IN ('Pending', 'In Progress', 'Completed')),

    CONSTRAINT FK_Tasks_Projects
        FOREIGN KEY (project_id)
        REFERENCES dbo.Projects(project_id)
        ON DELETE CASCADE
);
GO

-- create AIInteractions table

CREATE TABLE dbo.AIInteractions
(
    interaction_id INT IDENTITY(1,1) PRIMARY KEY,
    project_id INT NOT NULL,
    task_type NVARCHAR(100) NOT NULL,
    prompt NVARCHAR(MAX) NOT NULL,
    ai_response NVARCHAR(MAX) NOT NULL,
    model_name NVARCHAR(100) NULL,
    created_at DATETIME2 NOT NULL
        CONSTRAINT DF_AIInteractions_CreatedAt DEFAULT SYSDATETIME(),

    CONSTRAINT FK_AIInteractions_Projects
        FOREIGN KEY (project_id)
        REFERENCES dbo.Projects(project_id)
        ON DELETE CASCADE
);
GO


-- verify the database structure

-- List the tables

SELECT
    TABLE_SCHEMA,
    TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_NAME;
GO

-- view the columns

EXEC sp_help 'dbo.Projects';
GO

EXEC sp_help 'dbo.Tasks';
GO

EXEC sp_help 'dbo.AIInteractions';
GO


-- insert the sample data 

-- Insert the three frontend projects

INSERT INTO dbo.Projects
(
    project_name,
    description,
    technology_stack
)
VALUES
(
    'Student Placement Portal',
    'Application to manage student placement activities and interviews.',
    'React, FastAPI, SQL Server, Ollama'
),
(
    'Hospital Appointment System',
    'Application to manage doctors, patients and appointments.',
    'React, FastAPI, SQL Server'
),
(
    'AI Resume Mentor',
    'AI-powered application to analyse resumes and recommend improvements.',
    'React, FastAPI, SQL Server, GPT-OSS'
);
GO

-- verify the projects

SELECT *
FROM dbo.Projects
ORDER BY project_id;
GO

-- Insert sample tasks

INSERT INTO dbo.Tasks
(
    project_id,
    title,
    description,
    priority,
    status,
    ai_generated
)
VALUES
(
    1,
    'Create student registration page',
    'Design the student registration form in React.',
    'High',
    'Completed',
    0
),
(
    1,
    'Create placement API',
    'Create the FastAPI endpoint for placement records.',
    'High',
    'In Progress',
    0
),
(
    1,
    'Create company dashboard',
    'Display participating companies and available jobs.',
    'Medium',
    'Pending',
    1
),
(
    1,
    'Test placement workflow',
    'Test the complete student placement workflow.',
    'Medium',
    'Pending',
    0
),
(
    2,
    'Create doctor listing page',
    'Display doctors and their available specializations.',
    'Medium',
    'In Progress',
    0
),
(
    2,
    'Create appointment API',
    'Build an API to create patient appointments.',
    'High',
    'Pending',
    0
),
(
    2,
    'Create appointment table',
    'Create the SQL Server table for appointments.',
    'High',
    'Pending',
    0
),
(
    3,
    'Create resume upload screen',
    'Allow users to select and upload their resumes.',
    'Medium',
    'Completed',
    0
),
(
    3,
    'Integrate GPT-OSS',
    'Send resume information to the Ollama Cloud model.',
    'High',
    'In Progress',
    1
),
(
    3,
    'Display resume recommendations',
    'Display strengths, weaknesses and improvement suggestions.',
    'Medium',
    'Pending',
    1
);
GO

-- verify the tasks

SELECT *
FROM dbo.Tasks
ORDER BY task_id;
GO

-- Understand the project-task relationship

-- Execute an inner join that connects projects.project id with tasks.projectid

SELECT
    p.project_id,
    p.project_name,
    t.task_id,
    t.title,
    t.priority,
    t.status,
    t.ai_generated
FROM dbo.Projects AS p
INNER JOIN dbo.Tasks AS t
    ON p.project_id = t.project_id
ORDER BY p.project_id, t.task_id;
GO


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