CREATE TABLE [dbo].[Bills]
(
	[BillId] INT NOT NULL IDENTITY(1, 1),
	[InvoiceNumber] UNIQUEIDENTIFIER NOT NULL DEFAULT ( NEWID() ),
	[CreationDate] DATETIME NOT NULL DEFAULT ( GETDATE() ),
	[Amount] SMALLMONEY NOT NULL,
	[AppointmentId] INT NOT NULL,
	[Completed] BIT NOT NULL DEFAULT 0,
	[IsDeleted] BIT NOT NULL DEFAULT 0,

	CONSTRAINT PK_Bills PRIMARY KEY CLUSTERED ( [BillId] ),
	CONSTRAINT FK_Bills_Appointments FOREIGN KEY ( [AppointmentId] ) REFERENCES [dbo].[Appointments]( [AppointmentId] ),
	CONSTRAINT UC_InvoiceNumber UNIQUE ( [InvoiceNumber] ),
	CONSTRAINT CHK_Amount CHECK ( [Amount] >= 0 )
)