USE [TEST1]
GO

/****** Object:  Table [dbo].[Table_1]    Script Date: 15.01.2021 4:04:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE ֳ����_�����_2 (
���_������ INTEGER NOT NULL,
����� CHAR(30) NOT NULL,
��� CHAR(30) NOT NULL,
����� CHAR(15) NOT NULL,
���� CHAR(50) NOT NULL,
ֳ�� INTEGER NOT NULL,
PRIMARY KEY (���_������) );

CREATE TABLE ֳ����_�����_1 (
���_������ INTEGER NOT NULL,
����� CHAR(30) NOT NULL,
��� CHAR(30) NOT NULL,
����� CHAR(15) NOT NULL,
���� CHAR(50) NOT NULL,
ֳ�� INTEGER NOT NULL,
PRIMARY KEY (���_������) );

CREATE TABLE ֳ����_����� (
���_������ INTEGER NOT NULL,
����� CHAR(30) NOT NULL,
��� CHAR(30) NOT NULL,
����� CHAR(15) NOT NULL,
���� CHAR(50) NOT NULL,
ֳ�� INTEGER NOT NULL,
PRIMARY KEY (���_������) );

CREATE TABLE ����������_������� (
���_������ INTEGER NOT NULL,
���_������ INTEGER NOT NULL,
����� CHAR(30) NOT NULL,
̳��� CHAR(30) NOT NULL,
������ CHAR(30) NOT NULL,
������� INTEGER NOT NULL,
�����_�������� INTEGER NOT NULL,
����������_����� CHAR(30) NOT NULL,
���_���� CHAR(30) NOT NULL,
PRIMARY KEY (���_������) );

CREATE TABLE ��������� (
���_�������� INTEGER NOT NULL,
������� CHAR(30) NOT NULL,
��� CHAR(30) NOT NULL,
��_������� CHAR(30) NOT NULL,
������� CHAR(15) NOT NULL,
�����_�������� INTEGER NOT NULL,
����������_����� CHAR(30) NOT NULL,
PRIMARY KEY (���_��������) );

CREATE TABLE �������� (
���_������� INTEGER NOT NULL,
������� CHAR(30) NOT NULL,
��� CHAR(30) NOT NULL,
��_������� CHAR(30) NOT NULL,
�����_�������� INTEGER NOT NULL,
����������_����� CHAR(30) NOT NULL,
PRIMARY KEY (���_�������) );

CREATE TABLE ��������� (
���_���������� INTEGER NOT NULL,
������� CHAR(30) NOT NULL,
��� CHAR(30) NOT NULL,
��_������� CHAR(30) NOT NULL,
�������_������ CHAR(15) NOT NULL,
�����_�������� INTEGER NOT NULL,
����������_����� CHAR(30) NOT NULL,
������������ CHAR(15) NOT NULL,
�������� INTEGER NOT NULL,
PRIMARY KEY (���_����������) );

CREATE TABLE ������ (
���_�������� INTEGER NOT NULL,
���_�������� INTEGER NOT NULL,
���_������ INTEGER NOT NULL,
����_��������� DATE NOT NULL,
PRIMARY KEY (���_��������),
CONSTRAINT FK_��������� FOREIGN KEY (���_��������)
REFERENCES ��������� ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_����������_������� FOREIGN KEY (���_������)
REFERENCES ����������_������� ON DELETE CASCADE ON UPDATE CASCADE); 
      

CREATE TABLE ������ (
���_������� INTEGER NOT NULL,
���_������� INTEGER NOT NULL,
���_������ INTEGER NOT NULL,
���_���������� INTEGER NOT NULL,
���_������ INTEGER NOT NULL,
����_������� DATE NOT NULL,
PRIMARY KEY (���_�������),
CONSTRAINT FK_������� FOREIGN KEY (���_�������)
REFERENCES �������� ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_����������_������� FOREIGN KEY (���_������)
REFERENCES ����������_������� ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_��������� FOREIGN KEY (���_����������)
REFERENCES ��������� ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_ֳ����_����� FOREIGN KEY (���_������)
REFERENCES ֳ����_����� ON DELETE CASCADE ON UPDATE CASCADE);

GO

ALTER TABLE [dbo].[ֳ����_�����] ADD COLUMN [Date] DATETIME NULL

