USE [db_sales1]
GO

/****** Object:  Table [dbo].[db_order_details1]    Script Date: 1/11/2025 9:17:58 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[db_order_details1](
	[orderdetail_id] [int] NOT NULL,
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[unit_price] [int] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_order_details] PRIMARY KEY CLUSTERED 
(
	[orderdetail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[db_order_details1]  WITH CHECK ADD  CONSTRAINT [FK_db_order_details1_db_orders1] FOREIGN KEY([order_id])
REFERENCES [dbo].[db_orders1] ([order_id])
GO

ALTER TABLE [dbo].[db_order_details1] CHECK CONSTRAINT [FK_db_order_details1_db_orders1]
GO

ALTER TABLE [dbo].[db_order_details1]  WITH CHECK ADD  CONSTRAINT [FK_db_order_details1_db_products1] FOREIGN KEY([product_id])
REFERENCES [dbo].[db_products1] ([product_id])
GO

ALTER TABLE [dbo].[db_order_details1] CHECK CONSTRAINT [FK_db_order_details1_db_products1]
GO


