CREATE TABLE [dbo].[CATEGORIA]
(
[ID_CATEGORIA] [int] NOT NULL,
[NOME] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CATEGORIA] ADD CONSTRAINT [PK_CATEGORIA] PRIMARY KEY NONCLUSTERED  ([ID_CATEGORIA]) ON [PRIMARY]
GO
