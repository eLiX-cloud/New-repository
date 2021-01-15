CREATE TRIGGER Цінний_актив_INSERT_DELETE
ON Цінний_актив
AFTER INSERT, UPDATE
AS
UPDATE Цінний_актив
SET Date = GETDATE()
WHERE Код_активу = (SELECT Код_активу FROM inserted)



DROP TRIGGER IF EXISTS Цінний_актив_Encrypt_UPDATE;
GO 

CREATE TRIGGER Цінний_актив_Encrypt_UPDATE
ON Цінний_актив
AFTER UPDATE
AS
UPDATE Цінний_актив
SET Тикер = 'H_12'
WHERE Код_активу = (SELECT Код_активу FROM inserted)
