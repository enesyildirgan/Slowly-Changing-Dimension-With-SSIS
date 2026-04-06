USE [AdventureWorks2022_DWH]
GO

/****** Object:  Table [dbo].[Dim_Product_Scd6]    Script Date: 6.04.2026 15:37:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_Product_Scd6](
	[DwhProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Color] [nvarchar](15) NULL,
	[StandardCost] [money] NULL,
	[PreviousName] [nvarchar](50) NULL,
	[PreviousColor] [nvarchar](50) NULL,
	[PreviousStandardCost] [money] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Flag] [bit] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Dim_Product_Scd6] ADD  CONSTRAINT [DF__Dim_Produ__Creat__08B54D69]  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[Dim_Product_Scd6] ADD  CONSTRAINT [DF_Dim_Product_Scd6_Flag]  DEFAULT ((1)) FOR [Flag]
GO


