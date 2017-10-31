/*    ==Scripting Parameters==

    Source Server Version : Version140 (14.0.3006)
    Source Database Engine Edition : Enterprise
    Source Database Engine Type : Standalone

    Target Server Version : Version130
    Target Database Engine Edition : Enterprise
    Target Database Engine Type : Standalone
*/
/****** Object:  Schema [Sequences]    Script Date: 10/31/17 7:37:40 AM ******/
CREATE SCHEMA [Sequences]
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Holds sequences used by all tables in the application' , @level0type=N'SCHEMA',@level0name=N'Sequences'
GO
