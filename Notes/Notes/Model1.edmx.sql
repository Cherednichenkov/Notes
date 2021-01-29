
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/21/2021 10:57:32
-- Generated from EDMX file: C:\Users\Vladislav\source\repos\Notes\Notes\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [TestNote];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Konsom_NotesSet'
CREATE TABLE [dbo].[Konsom_NotesSet] (
    [Id_Notes] int IDENTITY(1,1) NOT NULL,
    [Name_note] nvarchar(max)  NOT NULL,
    [Note] nvarchar(max)  NOT NULL,
    [Date] datetime  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id_Notes] in table 'Konsom_NotesSet'
ALTER TABLE [dbo].[Konsom_NotesSet]
ADD CONSTRAINT [PK_Konsom_NotesSet]
    PRIMARY KEY CLUSTERED ([Id_Notes] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------