/*    ==Scripting Parameters==

    Source Server Version : Version140 (14.0.3006)
    Source Database Engine Edition : Enterprise
    Source Database Engine Type : Standalone

    Target Server Version : Version130
    Target Database Engine Edition : Enterprise
    Target Database Engine Type : Standalone
*/
/****** Object:  User [scripter]    Script Date: 10/31/17 7:37:40 AM ******/
CREATE USER [scripter] FOR LOGIN [scripter] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [scripter]
GO
ALTER ROLE [db_datareader] ADD MEMBER [scripter]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [scripter]
GO
