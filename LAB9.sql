SELECT ���������.���_��������, COUNT(ֳ����_�����.���_������) FROM ��������� 
LEFT JOIN ������
ON ���������.���_�������� = ������.���_��������
LEFT JOIN ֳ����_����� 
ON ������.���_������ = ֳ����_�����.���_������
GROUP BY ���������.���_��������


SELECT ���, AVG(ֳ��) FROM [dbo].[ֳ����_�����]
GROUP BY ���


SELECT ���������.���_��������, AVG(ֳ����_�����.ֳ��) FROM ��������� 
LEFT JOIN ������
ON ���������.���_�������� = ������.���_��������
LEFT JOIN ֳ����_����� 
ON ������.���_������ = ֳ����_�����.���_������
GROUP BY ���������.���_��������