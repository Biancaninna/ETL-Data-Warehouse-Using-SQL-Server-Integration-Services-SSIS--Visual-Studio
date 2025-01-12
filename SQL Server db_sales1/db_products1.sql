USE [db_sales1]
GO

/****** Object:  Table [dbo].[db_products1]    Script Date: 1/11/2025 9:18:50 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[db_products1](
	[product_id] [int] NOT NULL,
	[product_name] [varchar](50) NULL,
	[supplier_id] [int] NOT NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[db_products1]  WITH CHECK ADD  CONSTRAINT [FK_db_products1_db_suppliers1] FOREIGN KEY([supplier_id])
REFERENCES [dbo].[db_suppliers1] ([supplier_id])
GO

ALTER TABLE [dbo].[db_products1] CHECK CONSTRAINT [FK_db_products1_db_suppliers1]
GO


