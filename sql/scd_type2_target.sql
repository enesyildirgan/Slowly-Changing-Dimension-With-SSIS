USE [AdventureWorks2022_DWH]
GO

/****** Object:  Table [dbo].[Dim_Product_Scd2]    Script Date: 6.04.2026 15:35:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_Product_Scd2](
	[ProductID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Color] [nvarchar](15) NULL,
	[StandardCost] [money] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[EndDate] [datetime] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Dim_Product_Scd2] ADD  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [dbo].[Dim_Product_Scd2] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO


