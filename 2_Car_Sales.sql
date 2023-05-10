-- Select database 
 USE [DSTRAINING]

 --Delete table if existed and create it again
 IF OBJECT_ID('[dbo].[work_Cars_Sales]', 'U') IS NOT NULL 
 drop table [dbo].[work_Cars_Sales]

   CREATE TABLE [dbo].[work_Cars_Sales] (
       [Row_number] INT
      ,[Manufacturer] VARCHAR(100)
      ,[Model] VARCHAR(100)
      ,[Sale Date] DATE
      ,[Fuel_efficiency] FLOAT
      ,[Sold Price in Thousands] FLOAT
  )
 
 -- Copy data from the raw table to working table
 INSERT INTO [dbo].[work_Cars_Sales]
      (
       [Row_number]
      ,[Manufacturer]
      ,[Model]
      ,[Sale Date]
      ,[Fuel_efficiency]
      ,[Sold Price in Thousands]
	  )
SELECT 
       [Row_number]
      ,[Manufacturer]
      ,[Model]
      ,[Sale Date]
      ,[Fuel_efficiency]
      ,[Sold Price in Thousands]
FROM [dbo].[Raw_Car_Sales]