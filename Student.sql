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