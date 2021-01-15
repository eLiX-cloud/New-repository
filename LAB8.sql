SELECT Договір.*, Цінний_актив.Назва, Цінний_актив.Ціна  FROM Договір
 LEFT JOIN [dbo].Цінний_актив 
 ON Договір.Код_активу = Цінний_актив.Код_активу
 WHERE year(Договір.Дата_підписання) = '2019'
ORDER BY Цінний_актив.Ціна DESC


SELECT Цінний_актив.Тип, COUNT(*) AS Count FROM [dbo].[Цінний_актив]
GROUP BY Тип
ORDER BY [Count] DESC


SELECT Цінний_актив.Тип, COUNT(*) FROM [dbo].[Цінний_актив]
WHERE Ціна > 30000
GROUP BY Тип
HAVING Тип LIKE 'S%'
