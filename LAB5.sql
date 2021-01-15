/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *
INTO Цінний_актив
FROM [dbo].[Цінний_актив]
WHERE Код_активу > 45
GO

SELECT *
INTO Цінний_актив_1
FROM [dbo].[Цінний_актив]
WHERE Код_активу > 35
GO

SELECT * FROM [dbo].[Цінний_актив]
UNION SELECT * FROM [dbo].[Цінний_актив_1]

