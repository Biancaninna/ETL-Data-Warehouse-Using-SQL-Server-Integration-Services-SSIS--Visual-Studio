USE [db_sales1]
GO

/****** Object:  Table [dbo].[db_suppliers1]    Script Date: 1/11/2025 9:19:05 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[db_suppliers1](
	[supplier_id] [int] NOT NULL,
	[company_name] [varchar](50) NULL,
	[address] [text] NULL,
	[phone] [int] NULL,
 CONSTRAINT [PK_suppliers] PRIMARY KEY CLUSTERED 
(
	[supplier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


