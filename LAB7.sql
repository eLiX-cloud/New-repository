SELECT * FROM [dbo].[������]
WHERE ����_��������� BETWEEN '2018-01-01' AND '2019-12-30'


SELECT ֳ����_�����.* FROM [dbo].[ֳ����_�����]
RIGHT JOIN [������] ON
ֳ����_�����.���_������ = ������.���_������


SELECT DISTINCT ���������.* FROM [dbo].[���������]
RIGHT JOIN [������] ON
���������.���_�������� = ������.���_��������


SELECT ֳ����_�����.* FROM [dbo].[ֳ����_�����]
WHERE ֳ����_�����.���_������ NOT IN (
    SELECT ���_������
    FROM ������
)
ORDER BY ֳ��


SELECT ֳ����_�����.* FROM [dbo].[ֳ����_�����]
WHERE ��� LIKE '%Development%'
