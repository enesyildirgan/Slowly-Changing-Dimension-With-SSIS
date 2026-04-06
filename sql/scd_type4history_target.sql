USE [AdventureWorks2022_DWH]
GO

/****** Object:  Table [dbo].[Product_History_type4]    Script Date: 6.04.2026 15:37:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Product_History_type4](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[Color] [nvarchar](15) NULL,
	[StandardCost] [money] NULL,
	[CreatedDate] [datetime] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Product_History_type4] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO


