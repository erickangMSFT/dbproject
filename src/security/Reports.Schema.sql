/*    ==Scripting Parameters==

    Source Server Version : Version140 (14.0.3006)
    Source Database Engine Edition : Enterprise
    Source Database Engine Type : Standalone

    Target Server Version : Version130
    Target Database Engine Edition : Enterprise
    Target Database Engine Type : Standalone
*/
/****** Object:  Schema [Reports]    Script Date: 10/31/17 7:37:40 AM ******/
CREATE SCHEMA [Reports]
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Views and stored procedures that provide the only access for the reporting system' , @level0type=N'SCHEMA',@level0name=N'Reports'
GO
