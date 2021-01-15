BEGIN TRANSACTION;
INSERT INTO [dbo].[Цінний_актив]
VALUES
('Test1', 'Type1', '123-132', 'Some desc_1', 12300, GETDATE()),
('Test1', 'Type2', '123-132', 'Some desc_2', 12300, GETDATE()),
('Test1', 'Type3', '123-132', 'Some desc_3', 12300, GETDATE())
COMMIT;



BEGIN TRANSACTION;
INSERT INTO [dbo].[Цінний_актив]
VALUES
('Test1', 'Type1', '123-132', 'Some desc_1', 13200, GETDATE()),
('Test1', 'Type2', '123-132', 'Some desc_2', 13200, GETDATE()),
('Test1', 'Type3', '123-132', 'Some desc_3', 13200, GETDATE())
ROLLBACK;

GO
