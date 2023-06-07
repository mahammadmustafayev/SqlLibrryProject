

Create ASSEMBLY TestSqlLibrary FROM 'C:\Users\acer\Desktop\TestCLR\TestSqlLibrary\bin\Debug\TestSqlLibrary.dll' WITH PERMISSION_SET = UNSAFE  ;  
GO 

Create FUNCTION CountOfPerson() RETURNS INT   
AS EXTERNAL NAME TestSqlLibrary.WorkerCount.ReturnWorkerCount;   
GO 

sp_configure 'clr enabled', 1;  
GO  
RECONFIGURE;  
GO 

ALTER DATABASE Mover SET TRUSTWORTHY ON;

select dbo.ReturnWorkerCount();
go