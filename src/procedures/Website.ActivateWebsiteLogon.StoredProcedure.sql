/*    ==Scripting Parameters==

    Source Server Version : Version140 (14.0.3006)
    Source Database Engine Edition : Enterprise
    Source Database Engine Type : Standalone

    Target Server Version : Version130
    Target Database Engine Edition : Enterprise
    Target Database Engine Type : Standalone
*/
/****** Object:  StoredProcedure [Website].[ActivateWebsiteLogon]    Script Date: 10/31/17 7:37:42 AM ******/

GO

GO

CREATE PROCEDURE [Website].[ActivateWebsiteLogon]
@PersonID int,
@LogonName nvarchar(50),
@InitialPassword nvarchar(40)
WITH EXECUTE AS OWNER
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    UPDATE [Application].People
    SET IsPermittedToLogon = 1,
        LogonName = @LogonName,
        HashedPassword = HASHBYTES(N'SHA2_256', @InitialPassword + FullName),
        UserPreferences = (SELECT UserPreferences FROM [Application].People WHERE PersonID = 1) -- Person 1 has User Preferences template
    WHERE PersonID = @PersonID
    AND PersonID <> 1
    AND IsPermittedToLogon = 0;

    IF @@ROWCOUNT = 0
    BEGIN
        PRINT N'The PersonID must be valid, must not be person 1, and must not already be enabled';
        THROW 51000, N'Invalid PersonID', 1;
        RETURN -1;
    END;
END;

GO