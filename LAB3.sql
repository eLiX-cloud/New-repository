
ALTER TABLE [dbo].[ֳ����_�����] ADD [Date] DATETIME NULL

ALTER TABLE [dbo].[ֳ����_�����] DROP COLUMN [Date]

ALTER TABLE [dbo].[ֳ����_�����] ALTER COLUMN [ֳ��] INTEGER NOT NULL

ALTER TABLE [dbo].[ֳ����_�����]
    ADD ���_����������� int NULL
    CONSTRAINT FK_���_����������� FOREIGN KEY (���_�����������)
    REFERENCES ��������� ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE [dbo].[ֳ����_�����]
    ADD CONSTRAINT FK_���_����������� FOREIGN KEY (���_�����������)
    REFERENCES ��������� ON DELETE CASCADE ON UPDATE CASCADE
