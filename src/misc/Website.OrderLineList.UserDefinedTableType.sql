/*    ==Scripting Parameters==

    Source Server Version : Version140 (14.0.3006)
    Source Database Engine Edition : Enterprise
    Source Database Engine Type : Standalone

    Target Server Version : Version130
    Target Database Engine Edition : Enterprise
    Target Database Engine Type : Standalone
*/
/****** Object:  UserDefinedTableType [Website].[OrderLineList]    Script Date: 10/31/17 7:37:40 AM ******/
CREATE TYPE [Website].[OrderLineList] AS TABLE(
	[OrderReference] [int] NULL,
	[StockItemID] [int] NULL,
	[Description] [nvarchar](100) COLLATE Latin1_General_100_CI_AS NULL,
	[Quantity] [int] NULL,
	INDEX [IX_Website_OrderLineList] NONCLUSTERED 
(
	[OrderReference] ASC
)
)
WITH ( MEMORY_OPTIMIZED = ON )
GO
