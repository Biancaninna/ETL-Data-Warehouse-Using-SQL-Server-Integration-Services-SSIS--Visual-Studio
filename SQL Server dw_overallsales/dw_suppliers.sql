USE [dw_overallsales]
GO

/****** Object:  Table [dbo].[dw_suppliers]    Script Date: 1/11/2025 10:15:19 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dw_suppliers](
	[supplier_id] [int] NOT NULL,
	[company_name] [varchar](50) NULL,
	[address] [text] NULL,
	[phone] [int] NULL,
 CONSTRAINT [PK_dw.suppliers] PRIMARY KEY CLUSTERED 
(
	[supplier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


