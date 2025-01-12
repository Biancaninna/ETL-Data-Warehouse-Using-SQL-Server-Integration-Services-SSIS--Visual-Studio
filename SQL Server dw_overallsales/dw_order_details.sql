USE [dw_overallsales]
GO

/****** Object:  Table [dbo].[dw_order_details]    Script Date: 1/11/2025 10:09:27 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dw_order_details](
	[orderdetail_id] [int] NOT NULL,
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[unit_price] [int] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_dw_order_details] PRIMARY KEY CLUSTERED 
(
	[orderdetail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[dw_order_details]  WITH CHECK ADD  CONSTRAINT [FK_dw_order_details_dw_orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[dw_orders] ([order_id])
GO

ALTER TABLE [dbo].[dw_order_details] CHECK CONSTRAINT [FK_dw_order_details_dw_orders]
GO

ALTER TABLE [dbo].[dw_order_details]  WITH CHECK ADD  CONSTRAINT [FK_dw_order_details_dw_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[dw_products] ([product_id])
GO

ALTER TABLE [dbo].[dw_order_details] CHECK CONSTRAINT [FK_dw_order_details_dw_products]
GO


