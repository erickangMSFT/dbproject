/*    ==Scripting Parameters==

    Source Server Version : Version140 (14.0.3006)
    Source Database Engine Edition : Enterprise
    Source Database Engine Type : Standalone

    Target Server Version : Version130
    Target Database Engine Edition : Enterprise
    Target Database Engine Type : Standalone
*/
/****** Object:  PartitionFunction [PF_TransactionDateTime]    Script Date: 10/31/17 7:37:40 AM ******/
CREATE PARTITION FUNCTION [PF_TransactionDateTime](datetime) AS RANGE RIGHT FOR VALUES (N'2014-01-01T00:00:00.000', N'2015-01-01T00:00:00.000', N'2016-01-01T00:00:00.000', N'2017-01-01T00:00:00.000')
GO
