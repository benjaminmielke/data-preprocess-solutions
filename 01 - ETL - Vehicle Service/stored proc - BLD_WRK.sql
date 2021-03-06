USE [PP - SERVICE VEHICLE]
GO
/****** Object:  StoredProcedure [dbo].[_tmpl_BLD_WRK_VehicleService]    Script Date: 11/9/2020 10:45:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[BLD_WRK_VehicleService]

-- =============================================
-- Author:	BEN MIELKE	
-- Create date: 20201109
-- Description:	RAW -> WRK
-- Mod Date: 
-- =============================================


AS
BEGIN

-- =============================================
-- Drop Table
-- =============================================
IF OBJECT_ID('WRK_VehicleService') IS NOT NULL
DROP TABLE [WRK_VehicleService]

-- =============================================
-- Create Table
-- =============================================
CREATE TABLE [WRK_VehicleService]
( 
	[RowNumber]	INT IDENTITY (1,1)
	,[CustomerID]		VARCHAR(1000)
	,[CustomerSince]	DATE
	,[Vehicle]			VARCHAR(1000)
	,[2014A]			FLOAT
	,[2015A]			FLOAT
	,[2016E]			FLOAT
)

-- =============================================
-- Truncate Table
-- =============================================
TRUNCATE TABLE [WRK_VehicleService]

-- =============================================
-- Insert Into
-- =============================================
 INSERT INTO [WRK_VehicleService]
 (
	[CustomerID]		
	,[CustomerSince]	
	,[Vehicle]			
	,[2014A]			
	,[2015A]			
	,[2016E]				
)
SELECT	
	[CustomerID]		
	,[CustomerSince]	
	,[Vehicle]			
	,[2014A]			
	,[2015A]			
	,[2016E]	
FROM [dbo].[RAW_VehicleService_20201109]


END

--(1050000 rows affected)

/*

SELECT *
FROM [WRK_VehicleService]

SELECT *
FROM [RAW_VehicleService_20201109]

*/