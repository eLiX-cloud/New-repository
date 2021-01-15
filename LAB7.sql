SELECT * FROM [dbo].[Договір]
WHERE Дата_підписання BETWEEN '2018-01-01' AND '2019-12-30'


SELECT Цінний_актив.* FROM [dbo].[Цінний_актив]
RIGHT JOIN [Договір] ON
Цінний_актив.Код_активу = Договір.Код_активу


SELECT DISTINCT Продавець.* FROM [dbo].[Продавець]
RIGHT JOIN [Договір] ON
Продавець.Код_продавця = Договір.Код_продавця


SELECT Цінний_актив.* FROM [dbo].[Цінний_актив]
WHERE Цінний_актив.Код_активу NOT IN (
    SELECT Код_активу
    FROM Договір
)
ORDER BY Ціна


SELECT Цінний_актив.* FROM [dbo].[Цінний_актив]
WHERE Тип LIKE '%Development%'
