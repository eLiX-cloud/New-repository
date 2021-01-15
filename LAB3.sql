
ALTER TABLE [dbo].[Цінний_Актив] ADD [Date] DATETIME NULL

ALTER TABLE [dbo].[Цінний_Актив] DROP COLUMN [Date]

ALTER TABLE [dbo].[Цінний_Актив] ALTER COLUMN [Ціна] INTEGER NOT NULL

ALTER TABLE [dbo].[Цінний_Актив]
    ADD Код_користувача int NULL
    CONSTRAINT FK_Код_користувача FOREIGN KEY (Код_користувача)
    REFERENCES Продавець ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE [dbo].[Цінний_Актив]
    ADD CONSTRAINT FK_Код_користувача FOREIGN KEY (Код_користувача)
    REFERENCES Продавець ON DELETE CASCADE ON UPDATE CASCADE
