CREATE TRIGGER ֳ����_�����_INSERT_DELETE
ON ֳ����_�����
AFTER INSERT, UPDATE
AS
UPDATE ֳ����_�����
SET Date = GETDATE()
WHERE ���_������ = (SELECT ���_������ FROM inserted)



DROP TRIGGER IF EXISTS ֳ����_�����_Encrypt_UPDATE;
GO 

CREATE TRIGGER ֳ����_�����_Encrypt_UPDATE
ON ֳ����_�����
AFTER UPDATE
AS
UPDATE ֳ����_�����
SET ����� = 'H_12'
WHERE ���_������ = (SELECT ���_������ FROM inserted)
