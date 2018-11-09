CREATE TABLE [dbo].[AppointmentTypes]
(
	[AppointmentTypeId] INT NOT NULL IDENTITY(1, 1),
	[Name] NVARCHAR(20) NOT NULL,

	CONSTRAINT PK_AppointmentTypes PRIMARY KEY CLUSTERED ( [AppointmentTypeId] ),
)
