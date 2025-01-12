USE [db_sales2]
GO

/****** Object:  Table [dbo].[db_orders2]    Script Date: 1/11/2025 7:22:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[db_orders2](
	[order_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[order_date] [date] NULL,
 CONSTRAINT [PK_db.orders2] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[db_orders2]  WITH CHECK ADD  CONSTRAINT [FK_db_orders2_db_customers2] FOREIGN KEY([customer_id])
REFERENCES [dbo].[db_customers2] ([customer_id])
GO

ALTER TABLE [dbo].[db_orders2] CHECK CONSTRAINT [FK_db_orders2_db_customers2]
GO

ALTER TABLE [dbo].[db_orders2]  WITH CHECK ADD  CONSTRAINT [FK_db_orders2_db_employees2] FOREIGN KEY([employee_id])
REFERENCES [dbo].[db_employees2] ([employee_id])
GO

ALTER TABLE [dbo].[db_orders2] CHECK CONSTRAINT [FK_db_orders2_db_employees2]
GO


