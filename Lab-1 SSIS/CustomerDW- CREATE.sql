CREATE DATABASE [CustomerDW]
GO

USE [CustomerDW]
GO

/****** Object:  Table [dbo].[DimCountry]    Script Date: 10/13/2022 1:54:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimCountry](
	[CountryID] [int] NOT NULL,
	[CountryName] [nvarchar](50) NULL,
	[IsNew] [bit] NULL
) ON [PRIMARY]
GO

USE [CustomerDW]
GO

/****** Object:  Table [dbo].[DimProduct]    Script Date: 10/13/2022 1:54:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimProduct](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NULL
) ON [PRIMARY]
GO


USE [CustomerDW]
GO

/****** Object:  Table [dbo].[DimSalesPerson]    Script Date: 10/13/2022 1:55:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimSalesPerson](
	[PersonID] [int] NOT NULL,
	[PersonName] [nvarchar](50) NULL
) ON [PRIMARY]
GO


USE [CustomerDW]
GO

/****** Object:  Table [dbo].[DimStates]    Script Date: 10/13/2022 1:55:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimStates](
	[StatesID] [int] NOT NULL,
	[StatesName] [nvarchar](50) NULL
) ON [PRIMARY]
GO


USE [CustomerDW]
GO

/****** Object:  Table [dbo].[FactCustomer]    Script Date: 10/13/2022 1:55:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactCustomer](
	[CustomerID] [int] NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[CustomerAmountCY] [money] NULL,
	[SalesDateDT] [datetime] NULL,
	[CountryID_fk] [int] NULL,
	[StatesID_fk] [int] NULL,
	[ProductID_fk] [int] NULL,
	[SalesPersonID_fk] [int] NULL
) ON [PRIMARY]
GO

