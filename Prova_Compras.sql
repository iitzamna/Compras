USE [master]
GO
/****** Object:  Database [prova]    Script Date: 26/10/2023 10:59:29 ******/
CREATE DATABASE [prova]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'prova', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\prova.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'prova_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\prova_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [prova] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [prova].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [prova] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [prova] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [prova] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [prova] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [prova] SET ARITHABORT OFF 
GO
ALTER DATABASE [prova] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [prova] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [prova] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [prova] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [prova] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [prova] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [prova] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [prova] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [prova] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [prova] SET  DISABLE_BROKER 
GO
ALTER DATABASE [prova] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [prova] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [prova] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [prova] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [prova] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [prova] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [prova] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [prova] SET RECOVERY FULL 
GO
ALTER DATABASE [prova] SET  MULTI_USER 
GO
ALTER DATABASE [prova] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [prova] SET DB_CHAINING OFF 
GO
ALTER DATABASE [prova] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [prova] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [prova] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [prova] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'prova', N'ON'
GO
ALTER DATABASE [prova] SET QUERY_STORE = ON
GO
ALTER DATABASE [prova] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [prova]
GO
/****** Object:  User [sql]    Script Date: 26/10/2023 10:59:29 ******/
CREATE USER [sql] FOR LOGIN [sql] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Compras]]]    Script Date: 26/10/2023 10:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras]]](
	[Compras] [int] NOT NULL,
	[Transporte] [int] NOT NULL,
	[Financeiro] [int] NOT NULL,
 CONSTRAINT [PK_Compras]]] PRIMARY KEY CLUSTERED 
(
	[Compras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contatos]    Script Date: 26/10/2023 10:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contatos](
	[Contatos] [int] NOT NULL,
	[Email] [text] NOT NULL,
	[Numero_fixo] [numeric](7, 0) NOT NULL,
	[Numero_Telefone] [nchar](10) NOT NULL,
	[Whatsapp] [numeric](13, 0) NOT NULL,
	[Site] [text] NOT NULL,
 CONSTRAINT [PK_Contatos] PRIMARY KEY CLUSTERED 
(
	[Contatos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dados_Vendedor]    Script Date: 26/10/2023 10:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dados_Vendedor](
	[Dados_vendedor] [int] NOT NULL,
	[CPF] [numeric](10, 0) NOT NULL,
	[Data_nascimento] [date] NOT NULL,
	[Local_nascimento] [text] NOT NULL,
	[idade] [int] NOT NULL,
	[Genero] [varchar](1) NOT NULL,
	[Vendedor_id] [int] NOT NULL,
	[nome] [text] NOT NULL,
	[Contato] [int] NOT NULL,
	[Endereço] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Dados_Vendedor] PRIMARY KEY CLUSTERED 
(
	[Dados_vendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 26/10/2023 10:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[Empresa] [int] NOT NULL,
	[Nome_Empresa] [varchar](max) NOT NULL,
	[cnpj] [numeric](13, 0) NOT NULL,
	[vendedor] [int] NOT NULL,
	[tranporte] [int] NOT NULL,
	[contato_loja] [int] NOT NULL,
	[Endereço] [int] NOT NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[Empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Endereço]    Script Date: 26/10/2023 10:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Endereço](
	[Endereço] [int] NOT NULL,
	[CEP] [numeric](7, 0) NOT NULL,
	[Nome_rua] [text] NOT NULL,
	[Complemento] [text] NOT NULL,
	[Bairro] [text] NOT NULL,
	[Estado] [text] NOT NULL,
	[Municipio] [text] NOT NULL,
	[Ponto_referencia] [text] NOT NULL,
	[Numero] [numeric](5, 0) NOT NULL,
 CONSTRAINT [PK_Endereço] PRIMARY KEY CLUSTERED 
(
	[Endereço] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Financeiro]    Script Date: 26/10/2023 10:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Financeiro](
	[Financeiro] [int] NOT NULL,
	[Pagamento] [int] NOT NULL,
	[Nota_Pedido] [int] NOT NULL,
 CONSTRAINT [PK_Financeiro] PRIMARY KEY CLUSTERED 
(
	[Financeiro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nota_Pedido]    Script Date: 26/10/2023 10:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nota_Pedido](
	[Nota_Pedido] [int] NOT NULL,
	[Quantidade] [int] NOT NULL,
	[Preço] [float] NOT NULL,
	[Empresa_id] [int] NOT NULL,
	[Desconto] [int] NOT NULL,
	[Total] [float] NOT NULL,
	[Descrição_produto] [int] NOT NULL,
	[Tipo_Pagamento] [int] NOT NULL,
 CONSTRAINT [PK_Nota_Pedido] PRIMARY KEY CLUSTERED 
(
	[Nota_Pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_pagamento]    Script Date: 26/10/2023 10:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_pagamento](
	[Tipo_pagamento] [int] NOT NULL,
	[Credito] [float] NOT NULL,
	[Debito] [float] NOT NULL,
	[Pix] [float] NOT NULL,
	[Cheque] [float] NOT NULL,
	[Boleto] [float] NOT NULL,
	[Transferencia_Bancaria] [float] NOT NULL,
 CONSTRAINT [PK_Tipo_pagamento] PRIMARY KEY CLUSTERED 
(
	[Tipo_pagamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transporte]    Script Date: 26/10/2023 10:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transporte](
	[Transporte] [int] NOT NULL,
	[Automovel] [varchar](50) NOT NULL,
	[Aeronave] [varchar](50) NOT NULL,
	[Maritimo] [varchar](50) NOT NULL,
	[Prazo_entrega] [date] NOT NULL,
	[Empresa_id] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Transporte] PRIMARY KEY CLUSTERED 
(
	[Transporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Compras]]]  WITH CHECK ADD  CONSTRAINT [FK_Compras]]_Financeiro] FOREIGN KEY([Financeiro])
REFERENCES [dbo].[Financeiro] ([Financeiro])
GO
ALTER TABLE [dbo].[Compras]]] CHECK CONSTRAINT [FK_Compras]]_Financeiro]
GO
ALTER TABLE [dbo].[Compras]]]  WITH CHECK ADD  CONSTRAINT [FK_Compras]]_Transporte] FOREIGN KEY([Transporte])
REFERENCES [dbo].[Transporte] ([Transporte])
GO
ALTER TABLE [dbo].[Compras]]] CHECK CONSTRAINT [FK_Compras]]_Transporte]
GO
ALTER TABLE [dbo].[Dados_Vendedor]  WITH CHECK ADD  CONSTRAINT [FK_Dados_Vendedor_Contatos] FOREIGN KEY([Contato])
REFERENCES [dbo].[Contatos] ([Contatos])
GO
ALTER TABLE [dbo].[Dados_Vendedor] CHECK CONSTRAINT [FK_Dados_Vendedor_Contatos]
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_Empresa_Contatos] FOREIGN KEY([contato_loja])
REFERENCES [dbo].[Contatos] ([Contatos])
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_Empresa_Contatos]
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_Empresa_Dados_Vendedor] FOREIGN KEY([tranporte])
REFERENCES [dbo].[Dados_Vendedor] ([Dados_vendedor])
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_Empresa_Dados_Vendedor]
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_Empresa_Endereço] FOREIGN KEY([Endereço])
REFERENCES [dbo].[Endereço] ([Endereço])
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_Empresa_Endereço]
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_Empresa_Transporte] FOREIGN KEY([tranporte])
REFERENCES [dbo].[Transporte] ([Transporte])
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_Empresa_Transporte]
GO
ALTER TABLE [dbo].[Financeiro]  WITH CHECK ADD  CONSTRAINT [FK_Financeiro_Nota_Pedido] FOREIGN KEY([Nota_Pedido])
REFERENCES [dbo].[Nota_Pedido] ([Nota_Pedido])
GO
ALTER TABLE [dbo].[Financeiro] CHECK CONSTRAINT [FK_Financeiro_Nota_Pedido]
GO
ALTER TABLE [dbo].[Financeiro]  WITH CHECK ADD  CONSTRAINT [FK_Financeiro_Tipo_pagamento] FOREIGN KEY([Pagamento])
REFERENCES [dbo].[Tipo_pagamento] ([Tipo_pagamento])
GO
ALTER TABLE [dbo].[Financeiro] CHECK CONSTRAINT [FK_Financeiro_Tipo_pagamento]
GO
ALTER TABLE [dbo].[Nota_Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Nota_Pedido_Empresa] FOREIGN KEY([Empresa_id])
REFERENCES [dbo].[Empresa] ([Empresa])
GO
ALTER TABLE [dbo].[Nota_Pedido] CHECK CONSTRAINT [FK_Nota_Pedido_Empresa]
GO
ALTER TABLE [dbo].[Nota_Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Nota_Pedido_Tipo_pagamento] FOREIGN KEY([Tipo_Pagamento])
REFERENCES [dbo].[Tipo_pagamento] ([Tipo_pagamento])
GO
ALTER TABLE [dbo].[Nota_Pedido] CHECK CONSTRAINT [FK_Nota_Pedido_Tipo_pagamento]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Produtos adquiridos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Compras]', @level2type=N'COLUMN',@level2name=N'Compras'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Locomoção do produto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Compras]', @level2type=N'COLUMN',@level2name=N'Transporte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Pagamentos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Compras]', @level2type=N'COLUMN',@level2name=N'Financeiro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Formas de comunicação' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contatos', @level2type=N'COLUMN',@level2name=N'Contatos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Endereço digital' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contatos', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numero fixo de telefone' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contatos', @level2type=N'COLUMN',@level2name=N'Numero_fixo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numero de telefone movel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contatos', @level2type=N'COLUMN',@level2name=N'Numero_Telefone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Meio de comunicação instantanea' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contatos', @level2type=N'COLUMN',@level2name=N'Whatsapp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'resumo do conteúdo que o visitante vai encontrar ao acessar determinado site' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contatos', @level2type=N'COLUMN',@level2name=N'Site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dados do vendedor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dados_Vendedor', @level2type=N'COLUMN',@level2name=N'Dados_vendedor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificação' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dados_Vendedor', @level2type=N'COLUMN',@level2name=N'CPF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'data do nascimento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dados_Vendedor', @level2type=N'COLUMN',@level2name=N'Data_nascimento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Local  de nascimento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dados_Vendedor', @level2type=N'COLUMN',@level2name=N'Local_nascimento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'idade' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dados_Vendedor', @level2type=N'COLUMN',@level2name=N'idade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'genero escolhido' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dados_Vendedor', @level2type=N'COLUMN',@level2name=N'Genero'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificação do vendedor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dados_Vendedor', @level2type=N'COLUMN',@level2name=N'Vendedor_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'nome do vendedor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dados_Vendedor', @level2type=N'COLUMN',@level2name=N'nome'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'forma de comunicação' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dados_Vendedor', @level2type=N'COLUMN',@level2name=N'Contato'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'local de vivencia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dados_Vendedor', @level2type=N'COLUMN',@level2name=N'Endereço'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'indentificação da empresa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'Empresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nome Fantasias' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'Nome_Empresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numero de identificação de pessoa juridica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'cnpj'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'informações do vendedor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'vendedor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Transporte da mercadoria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'tranporte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contato Ativo para comunicação' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'contato_loja'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Localização estadual' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'Endereço'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Localização' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Endereço', @level2type=N'COLUMN',@level2name=N'Endereço'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Localização da rua por numero' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Endereço', @level2type=N'COLUMN',@level2name=N'CEP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nome dado a rua' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Endereço', @level2type=N'COLUMN',@level2name=N'Nome_rua'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'adição para achar o local' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Endereço', @level2type=N'COLUMN',@level2name=N'Complemento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'nome dado a uma rua' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Endereço', @level2type=N'COLUMN',@level2name=N'Bairro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cidade dentro de um pais' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Endereço', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'local dentro de um estado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Endereço', @level2type=N'COLUMN',@level2name=N'Municipio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ponto de atenção para melhor localização ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Endereço', @level2type=N'COLUMN',@level2name=N'Ponto_referencia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'numero dentro de uma rua para localização' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Endereço', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Valores a ser tratados' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Financeiro', @level2type=N'COLUMN',@level2name=N'Financeiro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Formas de pagamento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Financeiro', @level2type=N'COLUMN',@level2name=N'Pagamento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relatorio do pedido' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Financeiro', @level2type=N'COLUMN',@level2name=N'Nota_Pedido'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'informação do pedido' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Nota_Pedido', @level2type=N'COLUMN',@level2name=N'Nota_Pedido'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unidades' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Nota_Pedido', @level2type=N'COLUMN',@level2name=N'Quantidade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Valor do produto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Nota_Pedido', @level2type=N'COLUMN',@level2name=N'Preço'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'informações da empresa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Nota_Pedido', @level2type=N'COLUMN',@level2name=N'Empresa_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Desconto se aplicavel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Nota_Pedido', @level2type=N'COLUMN',@level2name=N'Desconto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'multiplicação da quantidade pelo preço' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Nota_Pedido', @level2type=N'COLUMN',@level2name=N'Total'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'indentificação do produto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Nota_Pedido', @level2type=N'COLUMN',@level2name=N'Descrição_produto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pagamentos aceitos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Nota_Pedido', @level2type=N'COLUMN',@level2name=N'Tipo_Pagamento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'tipos de pagamento aceitos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tipo_pagamento', @level2type=N'COLUMN',@level2name=N'Tipo_pagamento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ato de conseder um bem esperando a restituição' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tipo_pagamento', @level2type=N'COLUMN',@level2name=N'Credito'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pagamento via debito' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tipo_pagamento', @level2type=N'COLUMN',@level2name=N'Debito'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pagamento feito na hora' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tipo_pagamento', @level2type=N'COLUMN',@level2name=N'Pix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'usado para retirar quantias de dinheiro do banco' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tipo_pagamento', @level2type=N'COLUMN',@level2name=N'Cheque'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pagamento via boleto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tipo_pagamento', @level2type=N'COLUMN',@level2name=N'Boleto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tipo_pagamento', @level2type=N'COLUMN',@level2name=N'Transferencia_Bancaria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Locomoção do produto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transporte', @level2type=N'COLUMN',@level2name=N'Transporte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Locomoção terrestre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transporte', @level2type=N'COLUMN',@level2name=N'Automovel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Locomoção aerea' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transporte', @level2type=N'COLUMN',@level2name=N'Aeronave'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Locomoção maritima' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transporte', @level2type=N'COLUMN',@level2name=N'Maritimo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'tempo estipulado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transporte', @level2type=N'COLUMN',@level2name=N'Prazo_entrega'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações da empresa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transporte', @level2type=N'COLUMN',@level2name=N'Empresa_id'
GO
USE [master]
GO
ALTER DATABASE [prova] SET  READ_WRITE 
GO
