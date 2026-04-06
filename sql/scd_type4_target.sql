USE [AdventureWorks2022_DWH]
GO

/****** Object:  Table [dbo].[Dim_Product_Scd4]    Script Date: 6.04.2026 15:36:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_Product_Scd4](
	[ProductID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Color] [nvarchar](15) NULL,
	[StandardCost] [money] NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO


