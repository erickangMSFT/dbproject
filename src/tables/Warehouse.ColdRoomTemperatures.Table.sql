/*    ==Scripting Parameters==

    Source Server Version : Version140 (14.0.3006)
    Source Database Engine Edition : Enterprise
    Source Database Engine Type : Standalone

    Target Server Version : Version130
    Target Database Engine Edition : Enterprise
    Target Database Engine Type : Standalone
*/
/****** Object:  Table [Warehouse].[ColdRoomTemperatures]    Script Date: 10/31/17 7:37:41 AM ******/

GO

GO
CREATE TABLE [Warehouse].[ColdRoomTemperatures]
(
	[ColdRoomTemperatureID] [bigint] IDENTITY(1,1) NOT NULL,
	[ColdRoomSensorNumber] [int] NOT NULL,
	[RecordedWhen] [datetime2](7) NOT NULL,
	[Temperature] [decimal](10, 2) NOT NULL,
	[ValidFrom] [datetime2](7) GENERATED ALWAYS AS ROW START NOT NULL,
	[ValidTo] [datetime2](7) GENERATED ALWAYS AS ROW END NOT NULL,
	PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo]),

INDEX [IX_Warehouse_ColdRoomTemperatures_ColdRoomSensorNumber] NONCLUSTERED 
(
	[ColdRoomSensorNumber] ASC
),
 CONSTRAINT [PK_Warehouse_ColdRoomTemperatures]  PRIMARY KEY NONCLUSTERED 
(
	[ColdRoomTemperatureID] ASC
)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA, SYSTEM_VERSIONING = ON ( HISTORY_TABLE = [Warehouse].[ColdRoomTemperatures_Archive] ) )

GO
