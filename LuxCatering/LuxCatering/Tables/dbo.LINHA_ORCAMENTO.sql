CREATE TABLE [dbo].[LINHA_ORCAMENTO]
(
[ID_ORCAMENTO] [int] NOT NULL,
[ID_LINHA_ORCAMENTO] [int] NOT NULL,
[ID_PRODUTO] [int] NOT NULL,
[QTD_PRODUTO] [int] NOT NULL,
[PRECO] [money] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LINHA_ORCAMENTO] ADD CONSTRAINT [PK_LINHA_ORCAMENTO] PRIMARY KEY NONCLUSTERED  ([ID_ORCAMENTO], [ID_LINHA_ORCAMENTO]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ORCAMENTO_TEM_LINHAS_FK] ON [dbo].[LINHA_ORCAMENTO] ([ID_ORCAMENTO]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ORCAMENTO_CONTEM_PRODUTO_FK] ON [dbo].[LINHA_ORCAMENTO] ([ID_PRODUTO]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LINHA_ORCAMENTO] ADD CONSTRAINT [FK_LINHA_OR_ORCAMENTO_ORCAMENT] FOREIGN KEY ([ID_ORCAMENTO]) REFERENCES [dbo].[ORCAMENTO] ([ID_ORCAMENTO])
GO
ALTER TABLE [dbo].[LINHA_ORCAMENTO] ADD CONSTRAINT [FK_LINHA_OR_ORCAMENTO_PRODUTO] FOREIGN KEY ([ID_PRODUTO]) REFERENCES [dbo].[PRODUTO] ([ID_PRODUTO])
GO