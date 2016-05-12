/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     12/05/2016 22:26:52                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AVALIACAO') and o.name = 'FK_AVALIACA_AVALIADO_FORNECED')
alter table AVALIACAO
   drop constraint FK_AVALIACA_AVALIADO_FORNECED
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LINHA_ORCAMENTO') and o.name = 'FK_LINHA_OR_ORCAMENTO_PRODUTO')
alter table LINHA_ORCAMENTO
   drop constraint FK_LINHA_OR_ORCAMENTO_PRODUTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LINHA_ORCAMENTO') and o.name = 'FK_LINHA_OR_ORCAMENTO_ORCAMENT')
alter table LINHA_ORCAMENTO
   drop constraint FK_LINHA_OR_ORCAMENTO_ORCAMENT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LINHA_PEDIDO') and o.name = 'FK_LINHA_PE_PEDIDO_CO_PRODUTO')
alter table LINHA_PEDIDO
   drop constraint FK_LINHA_PE_PEDIDO_CO_PRODUTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LINHA_PEDIDO') and o.name = 'FK_LINHA_PE_PEDIDO_TE_PEDIDO')
alter table LINHA_PEDIDO
   drop constraint FK_LINHA_PE_PEDIDO_TE_PEDIDO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ORCAMENTO') and o.name = 'FK_ORCAMENT_ENVIA_ORC_FORNECED')
alter table ORCAMENTO
   drop constraint FK_ORCAMENT_ENVIA_ORC_FORNECED
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ORCAMENTO') and o.name = 'FK_ORCAMENT_RECEBE_OR_PEDIDO')
alter table ORCAMENTO
   drop constraint FK_ORCAMENT_RECEBE_OR_PEDIDO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PEDIDO') and o.name = 'FK_PEDIDO_EFECTUA_CLIENTE')
alter table PEDIDO
   drop constraint FK_PEDIDO_EFECTUA_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PEDIDO') and o.name = 'FK_PEDIDO_REALIZA_S_LOCAL')
alter table PEDIDO
   drop constraint FK_PEDIDO_REALIZA_S_LOCAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRODUTO') and o.name = 'FK_PRODUTO_TEM_CATEG_CATEGORI')
alter table PRODUTO
   drop constraint FK_PRODUTO_TEM_CATEG_CATEGORI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('AVALIACAO')
            and   name  = 'AVALIADO_FK'
            and   indid > 0
            and   indid < 255)
   drop index AVALIACAO.AVALIADO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AVALIACAO')
            and   type = 'U')
   drop table AVALIACAO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CATEGORIA')
            and   type = 'U')
   drop table CATEGORIA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CLIENTE')
            and   type = 'U')
   drop table CLIENTE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FORNECEDOR')
            and   type = 'U')
   drop table FORNECEDOR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LINHA_ORCAMENTO')
            and   name  = 'ORCAMENTO_CONTEM_PRODUTO_FK'
            and   indid > 0
            and   indid < 255)
   drop index LINHA_ORCAMENTO.ORCAMENTO_CONTEM_PRODUTO_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LINHA_ORCAMENTO')
            and   name  = 'ORCAMENTO_TEM_LINHAS_FK'
            and   indid > 0
            and   indid < 255)
   drop index LINHA_ORCAMENTO.ORCAMENTO_TEM_LINHAS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LINHA_ORCAMENTO')
            and   type = 'U')
   drop table LINHA_ORCAMENTO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LINHA_PEDIDO')
            and   name  = 'PEDIDO_CONTEM_PRODUTO_FK'
            and   indid > 0
            and   indid < 255)
   drop index LINHA_PEDIDO.PEDIDO_CONTEM_PRODUTO_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LINHA_PEDIDO')
            and   name  = 'PEDIDO_TEM_LINHAS_FK'
            and   indid > 0
            and   indid < 255)
   drop index LINHA_PEDIDO.PEDIDO_TEM_LINHAS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LINHA_PEDIDO')
            and   type = 'U')
   drop table LINHA_PEDIDO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOCAL')
            and   type = 'U')
   drop table LOCAL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ORCAMENTO')
            and   name  = 'ENVIA_ORCAMENTO_FK'
            and   indid > 0
            and   indid < 255)
   drop index ORCAMENTO.ENVIA_ORCAMENTO_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ORCAMENTO')
            and   name  = 'RECEBE_ORCAMENTO_FK'
            and   indid > 0
            and   indid < 255)
   drop index ORCAMENTO.RECEBE_ORCAMENTO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ORCAMENTO')
            and   type = 'U')
   drop table ORCAMENTO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PEDIDO')
            and   name  = 'REALIZA_SE_NUM_LOCAL_FK'
            and   indid > 0
            and   indid < 255)
   drop index PEDIDO.REALIZA_SE_NUM_LOCAL_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PEDIDO')
            and   name  = 'EFECTUA_FK'
            and   indid > 0
            and   indid < 255)
   drop index PEDIDO.EFECTUA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PEDIDO')
            and   type = 'U')
   drop table PEDIDO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRODUTO')
            and   name  = 'TEM_CATEGORIA_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRODUTO.TEM_CATEGORIA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRODUTO')
            and   type = 'U')
   drop table PRODUTO
go

/*==============================================================*/
/* Table: AVALIACAO                                             */
/*==============================================================*/
create table AVALIACAO (
   ID_AVALIACAO         int                  not null,
   ID_FORNECEDOR        int                  not null,
   GLOBAL               int                  not null,
   COMUNICACAO          int                  not null,
   PRECO                int                  not null,
   SERVICO              int                  not null,
   SIMPATIA             int                  not null,
   constraint PK_AVALIACAO primary key nonclustered (ID_AVALIACAO)
)
go

/*==============================================================*/
/* Index: AVALIADO_FK                                           */
/*==============================================================*/
create index AVALIADO_FK on AVALIACAO (
ID_FORNECEDOR ASC
)
go

/*==============================================================*/
/* Table: CATEGORIA                                             */
/*==============================================================*/
create table CATEGORIA (
   ID_CATEGORIA         int                  not null,
   NOME                 varchar(100)         not null,
   constraint PK_CATEGORIA primary key nonclustered (ID_CATEGORIA)
)
go

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   ID_CLIENTE           int                  not null,
   NOME                 varchar(100)         not null,
   MORADA               varchar(250)         null,
   NIF                  numeric(9)           not null,
   TELEFONE             numeric(15)          null,
   TELEMOVEL            numeric(15)          null,
   EMAIL                varchar(100)         null,
   constraint PK_CLIENTE primary key nonclustered (ID_CLIENTE)
)
go

/*==============================================================*/
/* Table: FORNECEDOR                                            */
/*==============================================================*/
create table FORNECEDOR (
   ID_FORNECEDOR        int                  not null,
   NOME                 varchar(100)         not null,
   MORADA               varchar(250)         not null,
   NIF                  numeric(9)           not null,
   TELEFONE             numeric(15)          null,
   TELEMOVEL            numeric(15)          null,
   EMAIL                varchar(100)         null,
   constraint PK_FORNECEDOR primary key nonclustered (ID_FORNECEDOR)
)
go

/*==============================================================*/
/* Table: LINHA_ORCAMENTO                                       */
/*==============================================================*/
create table LINHA_ORCAMENTO (
   ID_ORCAMENTO         int                  not null,
   ID_LINHA_ORCAMENTO   int                  not null,
   ID_PRODUTO           int                  not null,
   QTD_PRODUTO          int                  not null,
   PRECO                money                not null,
   constraint PK_LINHA_ORCAMENTO primary key nonclustered (ID_ORCAMENTO, ID_LINHA_ORCAMENTO)
)
go

/*==============================================================*/
/* Index: ORCAMENTO_TEM_LINHAS_FK                               */
/*==============================================================*/
create index ORCAMENTO_TEM_LINHAS_FK on LINHA_ORCAMENTO (
ID_ORCAMENTO ASC
)
go

/*==============================================================*/
/* Index: ORCAMENTO_CONTEM_PRODUTO_FK                           */
/*==============================================================*/
create index ORCAMENTO_CONTEM_PRODUTO_FK on LINHA_ORCAMENTO (
ID_PRODUTO ASC
)
go

/*==============================================================*/
/* Table: LINHA_PEDIDO                                          */
/*==============================================================*/
create table LINHA_PEDIDO (
   ID_PEDIDO            int                  not null,
   ID_LINHA_PEDIDO      int                  not null,
   ID_PRODUTO           int                  not null,
   QTD_PRODUTO          int                  not null,
   constraint PK_LINHA_PEDIDO primary key nonclustered (ID_PEDIDO, ID_LINHA_PEDIDO)
)
go

/*==============================================================*/
/* Index: PEDIDO_TEM_LINHAS_FK                                  */
/*==============================================================*/
create index PEDIDO_TEM_LINHAS_FK on LINHA_PEDIDO (
ID_PEDIDO ASC
)
go

/*==============================================================*/
/* Index: PEDIDO_CONTEM_PRODUTO_FK                              */
/*==============================================================*/
create index PEDIDO_CONTEM_PRODUTO_FK on LINHA_PEDIDO (
ID_PRODUTO ASC
)
go

/*==============================================================*/
/* Table: LOCAL                                                 */
/*==============================================================*/
create table LOCAL (
   ID_LOCAL             int                  not null,
   NOME                 varchar(100)         not null,
   COD_POSTAL           int                  null,
   MORADA               varchar(250)         null,
   LATITUDE             float(10)            null,
   LONGITUDE            float(10)            null,
   constraint PK_LOCAL primary key nonclustered (ID_LOCAL)
)
go

/*==============================================================*/
/* Table: ORCAMENTO                                             */
/*==============================================================*/
create table ORCAMENTO (
   ID_ORCAMENTO         int                  not null,
   ID_PEDIDO            int                  not null,
   ID_FORNECEDOR        int                  not null,
   NOME                 varchar(100)         null,
   DATA_CRIACAO         datetime             not null,
   PRECO_TOTAL          money                null,
   constraint PK_ORCAMENTO primary key nonclustered (ID_ORCAMENTO)
)
go

/*==============================================================*/
/* Index: RECEBE_ORCAMENTO_FK                                   */
/*==============================================================*/
create index RECEBE_ORCAMENTO_FK on ORCAMENTO (
ID_PEDIDO ASC
)
go

/*==============================================================*/
/* Index: ENVIA_ORCAMENTO_FK                                    */
/*==============================================================*/
create index ENVIA_ORCAMENTO_FK on ORCAMENTO (
ID_FORNECEDOR ASC
)
go

/*==============================================================*/
/* Table: PEDIDO                                                */
/*==============================================================*/
create table PEDIDO (
   ID_PEDIDO            int                  not null,
   ID_CLIENTE           int                  not null,
   ID_LOCAL             int                  not null,
   NOME                 varchar(100)         null,
   DATA_CRIACAO         datetime             not null,
   NUM_PESSOAS          int                  null,
   DATA_EVENTO          datetime             not null,
   constraint PK_PEDIDO primary key nonclustered (ID_PEDIDO)
)
go

/*==============================================================*/
/* Index: EFECTUA_FK                                            */
/*==============================================================*/
create index EFECTUA_FK on PEDIDO (
ID_CLIENTE ASC
)
go

/*==============================================================*/
/* Index: REALIZA_SE_NUM_LOCAL_FK                               */
/*==============================================================*/
create index REALIZA_SE_NUM_LOCAL_FK on PEDIDO (
ID_LOCAL ASC
)
go

/*==============================================================*/
/* Table: PRODUTO                                               */
/*==============================================================*/
create table PRODUTO (
   ID_PRODUTO           int                  not null,
   ID_CATEGORIA         int                  null,
   NOME                 varchar(100)         not null,
   DESCRICAO            text                 null,
   constraint PK_PRODUTO primary key nonclustered (ID_PRODUTO)
)
go

/*==============================================================*/
/* Index: TEM_CATEGORIA_FK                                      */
/*==============================================================*/
create index TEM_CATEGORIA_FK on PRODUTO (
ID_CATEGORIA ASC
)
go

alter table AVALIACAO
   add constraint FK_AVALIACA_AVALIADO_FORNECED foreign key (ID_FORNECEDOR)
      references FORNECEDOR (ID_FORNECEDOR)
go

alter table LINHA_ORCAMENTO
   add constraint FK_LINHA_OR_ORCAMENTO_PRODUTO foreign key (ID_PRODUTO)
      references PRODUTO (ID_PRODUTO)
go

alter table LINHA_ORCAMENTO
   add constraint FK_LINHA_OR_ORCAMENTO_ORCAMENT foreign key (ID_ORCAMENTO)
      references ORCAMENTO (ID_ORCAMENTO)
go

alter table LINHA_PEDIDO
   add constraint FK_LINHA_PE_PEDIDO_CO_PRODUTO foreign key (ID_PRODUTO)
      references PRODUTO (ID_PRODUTO)
go

alter table LINHA_PEDIDO
   add constraint FK_LINHA_PE_PEDIDO_TE_PEDIDO foreign key (ID_PEDIDO)
      references PEDIDO (ID_PEDIDO)
go

alter table ORCAMENTO
   add constraint FK_ORCAMENT_ENVIA_ORC_FORNECED foreign key (ID_FORNECEDOR)
      references FORNECEDOR (ID_FORNECEDOR)
go

alter table ORCAMENTO
   add constraint FK_ORCAMENT_RECEBE_OR_PEDIDO foreign key (ID_PEDIDO)
      references PEDIDO (ID_PEDIDO)
go

alter table PEDIDO
   add constraint FK_PEDIDO_EFECTUA_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
go

alter table PEDIDO
   add constraint FK_PEDIDO_REALIZA_S_LOCAL foreign key (ID_LOCAL)
      references LOCAL (ID_LOCAL)
go

alter table PRODUTO
   add constraint FK_PRODUTO_TEM_CATEG_CATEGORI foreign key (ID_CATEGORIA)
      references CATEGORIA (ID_CATEGORIA)
go

