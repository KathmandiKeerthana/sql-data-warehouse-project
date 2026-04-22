/*
================================================================
Create database and schemas
================================================================
Script Purpose:
       This script creates a new database named 'datawarehouse' after checking if it already exists.
       If the database exists, it is dropped and recreated.Additionally, the script sets up three schemas
       within the database: 'bronze','silver' and 'gold'.

Warning:
       Running this script will drop the entire 'datawarehouse' database if it exists.
       All data in the database will be permanently deleted.Proceed with caution
       and ensure you have proper backups before running this scrit.
*/
use master;
GO
_ _ Drop and recreate the 'Datawarehouse' database 
IF EXISTS(SELECT 1 FROM sys.database WHERE name='DataWarehouse'
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO
_ _Create the'DataWarehouse' database
create database DataWarehouse;
use DataWarehouse;
GO
_ _Create Schemas
create schema bronze;
GO
create schema silver;
GO
create schema gold;
GO
