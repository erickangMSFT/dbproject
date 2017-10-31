/*    ==Scripting Parameters==

    Source Server Version : Version140 (14.0.3006)
    Source Database Engine Edition : Enterprise
    Source Database Engine Type : Standalone

    Target Server Version : Version130
    Target Database Engine Edition : Enterprise
    Target Database Engine Type : Standalone
*/
/****** Object:  UserDefinedTableType [Website].[OrderIDList]    Script Date: 10/31/17 7:37:40 AM ******/
CREATE TYPE [Website].[OrderIDList] AS TABLE(
	[OrderID] [int] NOT NULL,
	 PRIMARY KEY NONCLUSTERED 
(
	[OrderID] ASC
)
)
WITH ( MEMORY_OPTIMIZED = ON )
GO
