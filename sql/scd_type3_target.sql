USE [AdventureWorks2022_DWH]
GO

/****** Object:  Table [dbo].[Dim_Product_Scd3]    Script Date: 6.04.2026 15:36:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_Product_Scd3](
	[ProductID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Color] [nvarchar](15) NULL,
	[StandardCost] [money] NULL,
	[ModifiedDate] [datetime] NULL,
	[PreviousName] [nvarchar](50) NULL,
	[PreviousColor] [nvarchar](50) NULL,
	[PreviousStandardCost] [nvarchar](50) NULL
) ON [PRIMARY]
GO


