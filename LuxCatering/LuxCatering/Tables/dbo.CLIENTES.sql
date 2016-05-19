CREATE TABLE [dbo].[CLIENTES]
(
[NIF] [int] NOT NULL,
[NOME] [char] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORADA] [char] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CLIENTES] ADD CONSTRAINT [PK_CLIENTES] PRIMARY KEY NONCLUSTERED  ([NIF]) ON [PRIMARY]
GO
