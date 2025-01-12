USE [dw_overallsales]
GO

/****** Object:  Table [dbo].[dw_products]    Script Date: 1/11/2025 10:14:46 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dw_products](
	[product_id] [int] NOT NULL,
	[product_name] [varchar](50) NULL,
	[supplier_id] [int] NOT NULL,
 CONSTRAINT [PK_dw_products] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[dw_products]  WITH CHECK ADD  CONSTRAINT [FK_dw_products_dw_suppliers] FOREIGN KEY([supplier_id])
REFERENCES [dbo].[dw_suppliers] ([supplier_id])
GO

ALTER TABLE [dbo].[dw_products] CHECK CONSTRAINT [FK_dw_products_dw_suppliers]
GO


