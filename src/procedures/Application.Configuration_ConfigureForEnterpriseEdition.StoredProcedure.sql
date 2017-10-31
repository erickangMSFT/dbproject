/*    ==Scripting Parameters==

    Source Server Version : Version140 (14.0.3006)
    Source Database Engine Edition : Enterprise
    Source Database Engine Type : Standalone

    Target Server Version : Version130
    Target Database Engine Edition : Enterprise
    Target Database Engine Type : Standalone
*/
/****** Object:  StoredProcedure [Application].[Configuration_ConfigureForEnterpriseEdition]    Script Date: 10/31/17 7:37:42 AM ******/

GO

GO

CREATE PROCEDURE [Application].[Configuration_ConfigureForEnterpriseEdition]
AS
BEGIN

    EXEC [Application].[Configuration_ApplyColumnstoreIndexing];

    IF SERVERPROPERTY(N'IsFullTextInstalled') = 0
    BEGIN
        EXEC [Application].[Configuration_ApplyFullTextIndexing];
    END;

    EXEC [Application].[Configuration_EnableInMemory];

    EXEC [Application].[Configuration_ApplyPartitioning];

END;

GO
