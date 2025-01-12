USE [dw_overallsales]
GO

/****** Object:  Table [dbo].[dw_orders]    Script Date: 1/11/2025 10:10:50 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dw_orders](
	[order_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[order_date] [date] NULL,
 CONSTRAINT [PK_dw_orders] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[dw_orders]  WITH CHECK ADD  CONSTRAINT [FK_dw_orders_dw_customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[dw_customers] ([customer_id])
GO

ALTER TABLE [dbo].[dw_orders] CHECK CONSTRAINT [FK_dw_orders_dw_customers]
GO

ALTER TABLE [dbo].[dw_orders]  WITH CHECK ADD  CONSTRAINT [FK_dw_orders_dw_employees] FOREIGN KEY([employee_id])
REFERENCES [dbo].[dw_employees] ([employee_id])
GO

ALTER TABLE [dbo].[dw_orders] CHECK CONSTRAINT [FK_dw_orders_dw_employees]
GO


