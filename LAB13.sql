CREATE INDEX IX_ֳ����_�����_��� ON [BrokerDB].[dbo].[ֳ����_�����] ([���])
EXEC sp_helpindex ֳ����_�����
GO



SET SHOWPLAN_ALL ON;
GO

SELECT * FROM [ֳ����_�����]
LEFT JOIN ������ 
ON ֳ����_�����.���_������ = ������.���_������
LEFT JOIN ���������
ON ���������.���_�������� = ������.���_��������
LEFT JOIN ����������_������� 
ON ������.���_������ = ����������_�������.���_������
WHERE ֳ����_�����.���_������ LIKE 'S%' OR ֳ����_�����.���_������ LIKE 'M'
ORDER BY ֳ����_�����.ֳ�� DESC
