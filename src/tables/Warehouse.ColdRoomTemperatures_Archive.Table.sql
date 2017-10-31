/*    ==Scripting Parameters==

    Source Server Version : Version140 (14.0.3006)
    Source Database Engine Edition : Enterprise
    Source Database Engine Type : Standalone

    Target Server Version : Version130
    Target Database Engine Edition : Enterprise
    Target Database Engine Type : Standalone
*/
/****** Object:  Table [Warehouse].[ColdRoomTemperatures_Archive]    Script Date: 10/31/17 7:37:41 AM ******/

GO

GO
CREATE TABLE [Warehouse].[ColdRoomTemperatures_Archive](
	[ColdRoomTemperatureID] [bigint] NOT NULL,
	[ColdRoomSensorNumber] [int] NOT NULL,
	[RecordedWhen] [datetime2](7) NOT NULL,
	[Temperature] [decimal](10, 2) NOT NULL,
	[ValidFrom] [datetime2](7) NOT NULL,
	[ValidTo] [datetime2](7) NOT NULL
) ON [USERDATA]

GO
/****** Object:  Index [ix_ColdRoomTemperatures_Archive]    Script Date: 10/31/17 7:37:41 AM ******/
CREATE CLUSTERED INDEX [ix_ColdRoomTemperatures_Archive] ON [Warehouse].[ColdRoomTemperatures_Archive]
(
	[ValidTo] ASC,
	[ValidFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [USERDATA]
GO