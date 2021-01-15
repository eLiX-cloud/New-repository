/****** Script for SelectTopNRows command from SSMS  ******/
INSERT INTO [dbo].[Цінний_актив]
( 	 [Код_активу]
	,[Назва]
    ,[Тип]
    ,[Тикер]
    ,[Опис]
    ,[Ціна])
VALUES  
	(5, 'TestName1', 'Test Type1', 'TestTiker1', 'TestDescr1', 65000),
    (6, 'TestName2', 'Test Type2', 'TestTiker2', 'TestDescr2', 42000)

BULK
INSERT Цінний_актив
FROM 'D:\TEXT.txt' 
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

UPDATE [dbo].[Цінний_актив]
SET
    [Назва] = 'Тест123',
    [Ціна] = 12300
WHERE Код_активу < 4

DELETE FROM [dbo].[Цінний_актив]
WHERE Код_активу = 7
