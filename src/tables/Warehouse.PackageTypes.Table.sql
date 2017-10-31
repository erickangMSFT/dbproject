/*    ==Scripting Parameters==

    Source Server Version : Version140 (14.0.3006)
    Source Database Engine Edition : Enterprise
    Source Database Engine Type : Standalone

    Target Server Version : Version130
    Target Database Engine Edition : Enterprise
    Target Database Engine Type : Standalone
*/
/****** Object:  Table [Warehouse].[PackageTypes]    Script Date: 10/31/17 7:37:41 AM ******/

GO

GO
CREATE TABLE [Warehouse].[PackageTypes](
	[PackageTypeID] [int] NOT NULL,
	[PackageTypeName] [nvarchar](50) NOT NULL,
	[LastEditedBy] [int] NOT NULL,
	[ValidFrom] [datetime2](7) GENERATED ALWAYS AS ROW START NOT NULL,
	[ValidTo] [datetime2](7) GENERATED ALWAYS AS ROW END NOT NULL,
 CONSTRAINT [PK_Warehouse_PackageTypes] PRIMARY KEY CLUSTERED 
(
	[PackageTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [USERDATA],
 CONSTRAINT [UQ_Warehouse_PackageTypes_PackageTypeName] UNIQUE NONCLUSTERED 
(
	[PackageTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [USERDATA],
	PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
) ON [USERDATA]
WITH
(
SYSTEM_VERSIONING = ON ( HISTORY_TABLE = [Warehouse].[PackageTypes_Archive] )
)

GO
ALTER TABLE [Warehouse].[PackageTypes] ADD  CONSTRAINT [DF_Warehouse_PackageTypes_PackageTypeID]  DEFAULT (NEXT VALUE FOR [Sequences].[PackageTypeID]) FOR [PackageTypeID]
GO
ALTER TABLE [Warehouse].[PackageTypes]  WITH CHECK ADD  CONSTRAINT [FK_Warehouse_PackageTypes_Application_People] FOREIGN KEY([LastEditedBy])
REFERENCES [Application].[People] ([PersonID])
GO
ALTER TABLE [Warehouse].[PackageTypes] CHECK CONSTRAINT [FK_Warehouse_PackageTypes_Application_People]
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Numeric ID used for reference to a package type within the database' , @level0type=N'SCHEMA',@level0name=N'Warehouse', @level1type=N'TABLE',@level1name=N'PackageTypes', @level2type=N'COLUMN',@level2name=N'PackageTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Full name of package types that stock items can be purchased in or sold in' , @level0type=N'SCHEMA',@level0name=N'Warehouse', @level1type=N'TABLE',@level1name=N'PackageTypes', @level2type=N'COLUMN',@level2name=N'PackageTypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Ways that stock items can be packaged (ie: each, box, carton, pallet, kg, etc.' , @level0type=N'SCHEMA',@level0name=N'Warehouse', @level1type=N'TABLE',@level1name=N'PackageTypes'
GO
