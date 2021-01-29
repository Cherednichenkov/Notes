INSERT [dbo].[Konsom_NotesSet]([Name_Note], [Note], [Date])
    VALUES (@0, @1, NULL)
    
SELECT [Id_Notes]
    FROM [TestNote].[dbo].[Konsom_NotesSet]
    WHERE @@ROWCOUNT > 0 AND [ID_Notes] = scope_identity()