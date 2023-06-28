CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [UId] UNIQUEIDENTIFIER NOT NULL DEFAULT newid(), 
    [TimeAdd] DATETIME NOT NULL DEFAULT getdate(), 
    [FullName] NVARCHAR(50) NOT NULL, 
    [Email] NVARCHAR(50) NOT NULL, 
    [Address] NVARCHAR(50) NOT NULL, 
    [City] NVARCHAR(50) NOT NULL, 
    [State] NVARCHAR(50) NOT NULL, 
    [ZipCode] INT NOT NULL, 
    [NameOnCard] NVARCHAR(50) NOT NULL, 
    [CreditCardNumber] BIGINT NOT NULL, 
    [ExpMonth] NVARCHAR(50) NOT NULL, 
    [ExpYear] INT NOT NULL, 
    [CVV] INT NOT NULL
)
