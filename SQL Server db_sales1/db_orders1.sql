USE [db_sales1]
GO

/****** Object:  Table [dbo].[db_orders1]    Script Date: 1/11/2025 9:18:16 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[db_orders1](
	[order_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[order_date] [date] NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[db_orders1]  WITH CHECK ADD  CONSTRAINT [FK_db_orders1_db_customers1] FOREIGN KEY([customer_id])
REFERENCES [dbo].[db_customers1] ([customer_id])
GO

ALTER TABLE [dbo].[db_orders1] CHECK CONSTRAINT [FK_db_orders1_db_customers1]
GO

ALTER TABLE [dbo].[db_orders1]  WITH CHECK ADD  CONSTRAINT [FK_db_orders1_db_employees1] FOREIGN KEY([employee_id])
REFERENCES [dbo].[db_employees1] ([employee_id])
GO

ALTER TABLE [dbo].[db_orders1] CHECK CONSTRAINT [FK_db_orders1_db_employees1]
GO


