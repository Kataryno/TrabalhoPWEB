CREATE TABLE [dbo].[ORCAMENTO]
(
[ID_ORCAMENTO] [int] NOT NULL,
[ID_PEDIDO] [int] NOT NULL,
[ID_FORNECEDOR] [int] NOT NULL,
[NOME] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DATA_CRIACAO] [datetime] NOT NULL,
[PRECO_TOTAL] [money] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ORCAMENTO] ADD CONSTRAINT [PK_ORCAMENTO] PRIMARY KEY NONCLUSTERED  ([ID_ORCAMENTO]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ENVIA_ORCAMENTO_FK] ON [dbo].[ORCAMENTO] ([ID_FORNECEDOR]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RECEBE_ORCAMENTO_FK] ON [dbo].[ORCAMENTO] ([ID_PEDIDO]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ORCAMENTO] ADD CONSTRAINT [FK_ORCAMENT_ENVIA_ORC_FORNECED] FOREIGN KEY ([ID_FORNECEDOR]) REFERENCES [dbo].[FORNECEDOR] ([ID_FORNECEDOR])
GO
ALTER TABLE [dbo].[ORCAMENTO] ADD CONSTRAINT [FK_ORCAMENT_RECEBE_OR_PEDIDO] FOREIGN KEY ([ID_PEDIDO]) REFERENCES [dbo].[PEDIDO] ([ID_PEDIDO])
GO