USE [db_sales2]
GO

/****** Object:  Table [dbo].[db_order_details2]    Script Date: 1/11/2025 7:21:21 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[db_order_details2](
	[orderdetail_id] [int] NOT NULL,
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[unit_price] [int] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_db.order_detail2] PRIMARY KEY CLUSTERED 
(
	[orderdetail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[db_order_details2]  WITH CHECK ADD  CONSTRAINT [FK_db_order_details2_db_orders2] FOREIGN KEY([order_id])
REFERENCES [dbo].[db_orders2] ([order_id])
GO

ALTER TABLE [dbo].[db_order_details2] CHECK CONSTRAINT [FK_db_order_details2_db_orders2]
GO

ALTER TABLE [dbo].[db_order_details2]  WITH CHECK ADD  CONSTRAINT [FK_db_order_details2_db_products2] FOREIGN KEY([product_id])
REFERENCES [dbo].[db_products2] ([product_id])
GO

ALTER TABLE [dbo].[db_order_details2] CHECK CONSTRAINT [FK_db_order_details2_db_products2]
GO


