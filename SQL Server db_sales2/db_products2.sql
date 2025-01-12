USE [db_sales2]
GO

/****** Object:  Table [dbo].[db_products2]    Script Date: 1/11/2025 7:24:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[db_products2](
	[product_id] [int] NOT NULL,
	[product_name] [varchar](50) NULL,
	[supplier_id] [int] NOT NULL,
 CONSTRAINT [PK_db.products2] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[db_products2]  WITH CHECK ADD  CONSTRAINT [FK_db_products2_db_suppliers2] FOREIGN KEY([supplier_id])
REFERENCES [dbo].[db_suppliers2] ([supplier_id])
GO

ALTER TABLE [dbo].[db_products2] CHECK CONSTRAINT [FK_db_products2_db_suppliers2]
GO


