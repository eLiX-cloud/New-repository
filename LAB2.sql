USE [TEST1]
GO

/****** Object:  Table [dbo].[Table_1]    Script Date: 15.01.2021 4:04:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE Цінний_актив_2 (
Код_активу INTEGER NOT NULL,
Назва CHAR(30) NOT NULL,
Тип CHAR(30) NOT NULL,
Тикер CHAR(15) NOT NULL,
Опис CHAR(50) NOT NULL,
Ціна INTEGER NOT NULL,
PRIMARY KEY (Код_активу) );

CREATE TABLE Цінний_актив_1 (
Код_активу INTEGER NOT NULL,
Назва CHAR(30) NOT NULL,
Тип CHAR(30) NOT NULL,
Тикер CHAR(15) NOT NULL,
Опис CHAR(50) NOT NULL,
Ціна INTEGER NOT NULL,
PRIMARY KEY (Код_активу) );

CREATE TABLE Цінний_актив (
Код_активу INTEGER NOT NULL,
Назва CHAR(30) NOT NULL,
Тип CHAR(30) NOT NULL,
Тикер CHAR(15) NOT NULL,
Опис CHAR(50) NOT NULL,
Ціна INTEGER NOT NULL,
PRIMARY KEY (Код_активу) );

CREATE TABLE Брокерська_компанія (
Код_компанії INTEGER NOT NULL,
Код_ЄДРПОУ INTEGER NOT NULL,
Назва CHAR(30) NOT NULL,
Місто CHAR(30) NOT NULL,
Вулиця CHAR(30) NOT NULL,
Будинок INTEGER NOT NULL,
Номер_телефону INTEGER NOT NULL,
Електронна_пошта CHAR(30) NOT NULL,
Веб_сайт CHAR(30) NOT NULL,
PRIMARY KEY (Код_компанії) );

CREATE TABLE Продавець (
Код_продавця INTEGER NOT NULL,
Прізвише CHAR(30) NOT NULL,
Імя CHAR(30) NOT NULL,
По_батькові CHAR(30) NOT NULL,
Паспорт CHAR(15) NOT NULL,
Номер_телефону INTEGER NOT NULL,
Електронна_пошта CHAR(30) NOT NULL,
PRIMARY KEY (Код_продавця) );

CREATE TABLE Покупець (
Код_покупця INTEGER NOT NULL,
Прізвише CHAR(30) NOT NULL,
Імя CHAR(30) NOT NULL,
По_батькові CHAR(30) NOT NULL,
Номер_телефону INTEGER NOT NULL,
Електронна_пошта CHAR(30) NOT NULL,
PRIMARY KEY (Код_покупця) );

CREATE TABLE Працівник (
Код_працівника INTEGER NOT NULL,
Прізвише CHAR(30) NOT NULL,
Імя CHAR(30) NOT NULL,
По_батькові CHAR(30) NOT NULL,
Трудова_книжка CHAR(15) NOT NULL,
Номер_телефону INTEGER NOT NULL,
Електронна_пошта CHAR(30) NOT NULL,
Спеціалізація CHAR(15) NOT NULL,
Зарплата INTEGER NOT NULL,
PRIMARY KEY (Код_працівника) );

CREATE TABLE Договір (
Код_договору INTEGER NOT NULL,
Код_продавця INTEGER NOT NULL,
Код_компанії INTEGER NOT NULL,
Дата_підписання DATE NOT NULL,
PRIMARY KEY (Код_договору),
CONSTRAINT FK_Продавець FOREIGN KEY (Код_продавця)
REFERENCES Продавець ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_Брокерська_компанія FOREIGN KEY (Код_компанії)
REFERENCES Брокерська_компанія ON DELETE CASCADE ON UPDATE CASCADE); 
      

CREATE TABLE Продаж (
Код_продажу INTEGER NOT NULL,
Код_покупця INTEGER NOT NULL,
Код_компанії INTEGER NOT NULL,
Код_працівника INTEGER NOT NULL,
Код_активу INTEGER NOT NULL,
Дата_продажу DATE NOT NULL,
PRIMARY KEY (Код_продажу),
CONSTRAINT FK_Покупця FOREIGN KEY (Код_покупця)
REFERENCES Покупець ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_Брокерська_компанія FOREIGN KEY (Код_компанії)
REFERENCES Брокерська_компанія ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_Працівник FOREIGN KEY (Код_працівника)
REFERENCES Працівник ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_Цінний_актив FOREIGN KEY (Код_активу)
REFERENCES Цінний_актив ON DELETE CASCADE ON UPDATE CASCADE);

GO

ALTER TABLE [dbo].[Цінний_Актив] ADD COLUMN [Date] DATETIME NULL

