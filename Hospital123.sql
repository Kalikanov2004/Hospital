USE [Hospital]
GO
/****** Object:  Table [dbo].[Doctors]    Script Date: 29.02.2024 11:31:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctors](
	[id] [int] NOT NULL,
	[doctor_id] [int] NULL,
	[last_name] [nvarchar](50) NULL,
	[first_name] [nvarchar](50) NULL,
	[middle_name] [nvarchar](50) NULL,
	[experience] [nvarchar](50) NULL,
	[scientific_title] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Doctors] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medical history]    Script Date: 29.02.2024 11:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medical history](
	[id] [int] NOT NULL,
	[disease_id] [int] NULL,
	[patient_id] [int] NULL,
	[doctor_id] [int] NULL,
	[diagnosis] [nvarchar](50) NULL,
	[date_of_onset] [nvarchar](50) NULL,
	[type_of_treatment] [nvarchar](50) NULL,
	[operation_code] [nvarchar](50) NULL,
 CONSTRAINT [PK_Medical history] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operations]    Script Date: 29.02.2024 11:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operations](
	[id] [int] NOT NULL,
	[operation_id] [int] NULL,
	[operation_descriotion] [int] NULL,
	[doctor_id] [nvarchar](50) NULL,
	[operation_data] [nvarchar](50) NULL,
	[patient_id] [nvarchar](50) NULL,
	[operation_result] [nvarchar](50) NULL,
 CONSTRAINT [PK_Operations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patients]    Script Date: 29.02.2024 11:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patients](
	[id] [int] NOT NULL,
	[patient_id] [int] NULL,
	[last_name] [nvarchar](50) NULL,
	[first_name] [nvarchar](50) NULL,
	[middle_name] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[age] [nvarchar](50) NULL,
	[gender] [nvarchar](50) NULL,
 CONSTRAINT [PK_Patients] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[treatment sheet]    Script Date: 29.02.2024 11:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[treatment sheet](
	[id] [int] NOT NULL,
	[date_of_treatment] [nvarchar](50) NULL,
	[disease_id] [int] NULL,
	[medicines] [nvarchar](50) NULL,
	[temperature] [nvarchar](50) NULL,
	[blood_pressure] [nvarchar](50) NULL,
	[patients_condition] [nvarchar](50) NULL,
 CONSTRAINT [PK_treatment sheet] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Doctors] ([id], [doctor_id], [last_name], [first_name], [middle_name], [experience], [scientific_title], [address]) VALUES (1, 1, N'Ковалев', N'Дмитрий', N'Алексеевич', N'Главный врач', N'25', N'Куйбышева 25')
INSERT [dbo].[Doctors] ([id], [doctor_id], [last_name], [first_name], [middle_name], [experience], [scientific_title], [address]) VALUES (2, 2, N'Михеев', N'Данила', N'Александрович', N'Хирург', N'20', N'Куйбышева 25')
GO
INSERT [dbo].[Medical history] ([id], [disease_id], [patient_id], [doctor_id], [diagnosis], [date_of_onset], [type_of_treatment], [operation_code]) VALUES (1, 1, 1, 1, N'простуда', N'20.11.2024', N'26.11.2024', N'1')
INSERT [dbo].[Medical history] ([id], [disease_id], [patient_id], [doctor_id], [diagnosis], [date_of_onset], [type_of_treatment], [operation_code]) VALUES (2, 2, 2, 2, N'сыпь', N'22.11.2024', N'28.11.2024', N'2')
GO
INSERT [dbo].[Operations] ([id], [operation_id], [operation_descriotion], [doctor_id], [operation_data], [patient_id], [operation_result]) VALUES (1, 1, 1, N'1', N'20.11.2024', N'1', N'успешно')
INSERT [dbo].[Operations] ([id], [operation_id], [operation_descriotion], [doctor_id], [operation_data], [patient_id], [operation_result]) VALUES (2, 2, 2, N'2', N'10.01.2025', N'2', N'успешно')
GO
INSERT [dbo].[Patients] ([id], [patient_id], [last_name], [first_name], [middle_name], [city], [age], [gender]) VALUES (1, 1, N'Голов', N'Сергей', N'Александрович', N'Москва', N'19', N'Мужской')
INSERT [dbo].[Patients] ([id], [patient_id], [last_name], [first_name], [middle_name], [city], [age], [gender]) VALUES (2, 2, N'Марушкин', N'Кирилл', N'Динисович', N'Лукоянов', N'20', N'Мужской')
GO
INSERT [dbo].[treatment sheet] ([id], [date_of_treatment], [disease_id], [medicines], [temperature], [blood_pressure], [patients_condition]) VALUES (1, N'23.10.2024', 1, N'Таблетки', N'37', N'120', N'среднее')
INSERT [dbo].[treatment sheet] ([id], [date_of_treatment], [disease_id], [medicines], [temperature], [blood_pressure], [patients_condition]) VALUES (2, N'27.11.2024', 2, N'Микстура', N'36', N'135', N'тяжелое')
GO
ALTER TABLE [dbo].[Doctors]  WITH CHECK ADD  CONSTRAINT [FK_Doctors_Operations] FOREIGN KEY([doctor_id])
REFERENCES [dbo].[Operations] ([id])
GO
ALTER TABLE [dbo].[Doctors] CHECK CONSTRAINT [FK_Doctors_Operations]
GO
ALTER TABLE [dbo].[Medical history]  WITH CHECK ADD  CONSTRAINT [FK_Medical history_Operations] FOREIGN KEY([patient_id])
REFERENCES [dbo].[Operations] ([id])
GO
ALTER TABLE [dbo].[Medical history] CHECK CONSTRAINT [FK_Medical history_Operations]
GO
ALTER TABLE [dbo].[Medical history]  WITH CHECK ADD  CONSTRAINT [FK_Medical history_treatment sheet] FOREIGN KEY([disease_id])
REFERENCES [dbo].[treatment sheet] ([id])
GO
ALTER TABLE [dbo].[Medical history] CHECK CONSTRAINT [FK_Medical history_treatment sheet]
GO
ALTER TABLE [dbo].[Patients]  WITH CHECK ADD  CONSTRAINT [FK_Patients_Medical history] FOREIGN KEY([patient_id])
REFERENCES [dbo].[Medical history] ([id])
GO
ALTER TABLE [dbo].[Patients] CHECK CONSTRAINT [FK_Patients_Medical history]
GO
ALTER TABLE [dbo].[Patients]  WITH CHECK ADD  CONSTRAINT [FK_Patients_treatment sheet] FOREIGN KEY([patient_id])
REFERENCES [dbo].[treatment sheet] ([id])
GO
ALTER TABLE [dbo].[Patients] CHECK CONSTRAINT [FK_Patients_treatment sheet]
GO
