/*    ==Scripting Parameters==

    Source Server Version : Version140 (14.0.3006)
    Source Database Engine Edition : Enterprise
    Source Database Engine Type : Standalone

    Target Server Version : Version130
    Target Database Engine Edition : Enterprise
    Target Database Engine Type : Standalone
*/
/****** Object:  UserDefinedTableType [Website].[OrderList]    Script Date: 10/31/17 7:37:40 AM ******/
CREATE TYPE [Website].[OrderList] AS TABLE(
	[OrderReference] [int] NOT NULL,
	[CustomerID] [int] NULL,
	[ContactPersonID] [int] NULL,
	[ExpectedDeliveryDate] [date] NULL,
	[CustomerPurchaseOrderNumber] [nvarchar](20) COLLATE Latin1_General_100_CI_AS NULL,
	[IsUndersupplyBackordered] [bit] NULL,
	[Comments] [nvarchar](max) COLLATE Latin1_General_100_CI_AS NULL,
	[DeliveryInstructions] [nvarchar](max) COLLATE Latin1_General_100_CI_AS NULL,
	 PRIMARY KEY NONCLUSTERED 
(
	[OrderReference] ASC
)
)
WITH ( MEMORY_OPTIMIZED = ON )
GO
