/****** Object:  Table [dbo].[pulse_survey_detail]    Script Date: 7/7/2019 10:29:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pulse_survey_detail](
	[pulse_survey_detail] [uniqueidentifier] NOT NULL,
	[pulse_survey_master_id] [uniqueidentifier] NOT NULL,
	[answer] [bit] NOT NULL,
 CONSTRAINT [PK_pulse_survey_detail] PRIMARY KEY CLUSTERED 
(
	[pulse_survey_detail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pulse_survey_master]    Script Date: 7/7/2019 10:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pulse_survey_master](
	[pulse_survey_master_id] [uniqueidentifier] NOT NULL,
	[question_name] [nvarchar](50) NOT NULL,
	[date_created] [datetime] NULL,
	[date_close] [datetime] NULL,
	[isdone] [bit] NOT NULL,
 CONSTRAINT [PK_pulse_survey_master] PRIMARY KEY CLUSTERED 
(
	[pulse_survey_master_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[pulse_survey_detail] ([pulse_survey_detail], [pulse_survey_master_id], [answer]) VALUES (N'1cefafbb-b8d6-4589-9117-b18eec1e4eae', N'4cefafbb-b8d6-4589-9117-b18eec1e4eae', 0)
INSERT [dbo].[pulse_survey_detail] ([pulse_survey_detail], [pulse_survey_master_id], [answer]) VALUES (N'2cefafbb-b8d6-4589-9117-b18eec1e4eae', N'4cefafbb-b8d6-4589-9117-b18eec1e4eae', 1)
INSERT [dbo].[pulse_survey_master] ([pulse_survey_master_id], [question_name], [date_created], [date_close], [isdone]) VALUES (N'4cefafbb-b8d6-4589-9117-b18eec1e4eae', N'¿El Color Amarillo es un Color Primario?', CAST(N'2019-07-07T00:00:00.000' AS DateTime), NULL, 0)
ALTER TABLE [dbo].[pulse_survey_master] ADD  CONSTRAINT [DF_pulse_survey_master_isdone]  DEFAULT ((0)) FOR [isdone]
GO
ALTER TABLE [dbo].[pulse_survey_detail]  WITH CHECK ADD  CONSTRAINT [FK_pulse_survey_detail_pulse_survey_detail] FOREIGN KEY([pulse_survey_detail])
REFERENCES [dbo].[pulse_survey_detail] ([pulse_survey_detail])
GO
ALTER TABLE [dbo].[pulse_survey_detail] CHECK CONSTRAINT [FK_pulse_survey_detail_pulse_survey_detail]
GO
ALTER TABLE [dbo].[pulse_survey_detail]  WITH CHECK ADD  CONSTRAINT [FK_pulse_survey_detail_pulse_survey_detail1] FOREIGN KEY([pulse_survey_detail])
REFERENCES [dbo].[pulse_survey_detail] ([pulse_survey_detail])
GO
ALTER TABLE [dbo].[pulse_survey_detail] CHECK CONSTRAINT [FK_pulse_survey_detail_pulse_survey_detail1]
GO
