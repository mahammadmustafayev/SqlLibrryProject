ALTER ASSEMBLY FunctionLibrary FROM 'C:\Users\mahammadvm\Desktop\FunctionLibrary\FunctionLibrary\bin\Debug\FunctionLibrary.dll' WITH PERMISSION_SET = SAFE  ;  
GO  

ALTER ASSEMBLY FunctionLibrary FROM 'C:\Users\mahammadvm\Desktop\FunctionLibrary\FunctionLibrary\bin\Debug\FunctionLibrary.dll' ;  
GO  


ALTER FUNCTION CountOfPerson() RETURNS INT   
AS EXTERNAL NAME FunctionLibrary.Test.ReturnsPersonCount;   
GO 

SELECT dbo.CountOfPerson();
GO  

 EXEC sp_configure 'clr strict security', 0;
    RECONFIGURE;