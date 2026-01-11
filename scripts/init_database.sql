/* 
## Create Database and Schemas

## Script Purpose:
This script creates a new database named "DataWarehouse" after checking if it already exits.
If the database exists, it is dropped and re-created.
Additionally, the script sets up three schemas within the database:'bronze', 'silver', 'gold'.

## Warning
Running this script will drop the entire database if it exists.
All data in the database will be permanently deleted.
Proceed with caution and ensure you have proper backups before running this script.
*/

use master;
GO

-- Drop and re-create the 'DataWarehouse' database
  
IF EXISTS (SELECT 1 FROM sys.databases WHERE name='DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO;

-- Create the 'DataWarehouse' database

create database DataWarehouse;
GO

use DataWarehouse;
GO

-- create schemas
  
create schema bronze;
GO
create schema silver;
GO
create schema gold;
GO
