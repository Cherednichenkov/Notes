CREATE TABLE [dbo].[Konsom_NotesSet] (
    [Id_Notes]  INT            IDENTITY (1, 1) NOT NULL,
    [Name_note] NVARCHAR (MAX) NULL,
    [Note]      NVARCHAR (MAX) NULL,
    [Date]      DATETIME       NOT NULL,
    CONSTRAINT [PK_Konsom_NotesSet] PRIMARY KEY CLUSTERED ([Id_Notes] ASC)
);

