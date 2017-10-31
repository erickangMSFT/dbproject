/*    ==Scripting Parameters==

    Source Server Version : Version140 (14.0.3006)
    Source Database Engine Edition : Enterprise
    Source Database Engine Type : Standalone

    Target Server Version : Version130
    Target Database Engine Edition : Enterprise
    Target Database Engine Type : Standalone
*/
/****** Object:  UserDefinedTableType [Website].[SensorDataList]    Script Date: 10/31/17 7:37:40 AM ******/
CREATE TYPE [Website].[SensorDataList] AS TABLE(
	[SensorDataListID] [int] IDENTITY(1,1) NOT NULL,
	[ColdRoomSensorNumber] [int] NULL,
	[RecordedWhen] [datetime2](7) NULL,
	[Temperature] [decimal](18, 2) NULL,
	 PRIMARY KEY NONCLUSTERED 
(
	[SensorDataListID] ASC
)
)
WITH ( MEMORY_OPTIMIZED = ON )
GO
