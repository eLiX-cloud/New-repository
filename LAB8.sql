SELECT ������.*, ֳ����_�����.�����, ֳ����_�����.ֳ��  FROM ������
 LEFT JOIN [dbo].ֳ����_����� 
 ON ������.���_������ = ֳ����_�����.���_������
 WHERE year(������.����_���������) = '2019'
ORDER BY ֳ����_�����.ֳ�� DESC


SELECT ֳ����_�����.���, COUNT(*) AS Count FROM [dbo].[ֳ����_�����]
GROUP BY ���
ORDER BY [Count] DESC


SELECT ֳ����_�����.���, COUNT(*) FROM [dbo].[ֳ����_�����]
WHERE ֳ�� > 30000
GROUP BY ���
HAVING ��� LIKE 'S%'
