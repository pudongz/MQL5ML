CREATE TABLE [dbo].[MAIN]
(
	[ID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [CATEGORY] VARCHAR(255) NULL, 
    [DECSRIPTION] TEXT NULL, 
    [PROGRAM] VARCHAR(255) NULL, 
    CONSTRAINT [CK_MAIN_Column] CHECK (1 = 1)
)

GO

EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Root category table of programs',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MAIN',
    @level2type = NULL,
    @level2name = NULL
GO

CREATE UNIQUE CLUSTERED INDEX [IX_MAIN_Column] ON [dbo].[MAIN] ([Column])

GO

CREATE TRIGGER [dbo].[Trigger_MAIN]
    ON [dbo].[MAIN]
    FOR DELETE, INSERT, UPDATE
    AS
    BEGIN
        SET NoCount ON
    END