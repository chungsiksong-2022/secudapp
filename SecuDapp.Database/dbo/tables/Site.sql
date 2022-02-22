CREATE TABLE [dbo].[Terminal] (
    [Id]                       UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [UserIdCreation]           UNIQUEIDENTIFIER NOT NULL,
    [UserIdUpdate]             UNIQUEIDENTIFIER NULL,
    [BrandingId]               UNIQUEIDENTIFIER NULL,
    [CreationTime]             DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [UpdateTime]               DATETIME2 (7)    NULL,
    [Active]                   BIT              DEFAULT ((1)) NOT NULL,
    [Name]                     NVARCHAR (200)   NOT NULL,
    [IconUrl]                  NVARCHAR (2000)  NULL,
    [AutomaticApprovalEnabled] BIT              DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Terminal] PRIMARY KEY CLUSTERED ([Id] ASC)
);

