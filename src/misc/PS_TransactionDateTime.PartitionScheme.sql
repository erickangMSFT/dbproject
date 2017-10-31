/*    ==Scripting Parameters==

    Source Server Version : Version140 (14.0.3006)
    Source Database Engine Edition : Enterprise
    Source Database Engine Type : Standalone

    Target Server Version : Version130
    Target Database Engine Edition : Enterprise
    Target Database Engine Type : Standalone
*/
/****** Object:  PartitionScheme [PS_TransactionDateTime]    Script Date: 10/31/17 7:37:40 AM ******/
CREATE PARTITION SCHEME [PS_TransactionDateTime] AS PARTITION [PF_TransactionDateTime] TO ([USERDATA], [USERDATA], [USERDATA], [USERDATA], [USERDATA], [USERDATA])
GO
