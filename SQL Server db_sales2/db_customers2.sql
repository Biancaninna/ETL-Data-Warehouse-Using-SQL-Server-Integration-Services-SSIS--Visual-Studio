USE [db_sales2]
GO

/****** Object:  Table [dbo].[db_customers2]    Script Date: 1/10/2025 5:40:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[db_customers2](
	[customer_id] [int] NOT NULL,
	[company_name] [varchar](50) NULL,
	[address] [text] NULL,
	[phone] [int] NULL,
 CONSTRAINT [PK_db.customers2] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


