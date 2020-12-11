CREATE TABLE [dbo].[MAIN]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [CATEGORY] VARCHAR(255) NULL, 
    [PROGRAM] VARCHAR(255) NULL, 
    [DESCRIPTION] TEXT NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Main directory',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MAIN',
    @level2type = NULL,
    @level2name = NULL
GO

CREATE UNIQUE INDEX [IX_MAIN_Column] ON [dbo].[MAIN] ([Id])
