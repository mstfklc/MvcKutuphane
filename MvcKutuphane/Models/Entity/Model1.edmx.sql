
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/09/2023 14:41:27
-- Generated from EDMX file: C:\Users\Mustafa\Desktop\MvcKutuphane\MvcKutuphane\Models\Entity\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DBKUTUPHANEE];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_TBLCEZALAR_TBLHAREKET]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TBLCEZALAR] DROP CONSTRAINT [FK_TBLCEZALAR_TBLHAREKET];
GO
IF OBJECT_ID(N'[dbo].[FK_TBLCEZALAR_TBLUYELER]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TBLCEZALAR] DROP CONSTRAINT [FK_TBLCEZALAR_TBLUYELER];
GO
IF OBJECT_ID(N'[dbo].[FK_TBLHAREKET_TBLKITAP]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TBLHAREKET] DROP CONSTRAINT [FK_TBLHAREKET_TBLKITAP];
GO
IF OBJECT_ID(N'[dbo].[FK_TBLHAREKET_TBLPERSONEL]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TBLHAREKET] DROP CONSTRAINT [FK_TBLHAREKET_TBLPERSONEL];
GO
IF OBJECT_ID(N'[dbo].[FK_TBLHAREKET_TBLUYELER]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TBLHAREKET] DROP CONSTRAINT [FK_TBLHAREKET_TBLUYELER];
GO
IF OBJECT_ID(N'[dbo].[FK_TBLKITAP_TBLKATEGORI]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TBLKITAP] DROP CONSTRAINT [FK_TBLKITAP_TBLKATEGORI];
GO
IF OBJECT_ID(N'[dbo].[FK_TBLKITAP_TBLYAZAR]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TBLKITAP] DROP CONSTRAINT [FK_TBLKITAP_TBLYAZAR];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[TBLCEZALAR]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TBLCEZALAR];
GO
IF OBJECT_ID(N'[dbo].[TBLDUYURULAR]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TBLDUYURULAR];
GO
IF OBJECT_ID(N'[dbo].[TBLHAKKIMIZDA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TBLHAKKIMIZDA];
GO
IF OBJECT_ID(N'[dbo].[TBLHAREKET]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TBLHAREKET];
GO
IF OBJECT_ID(N'[dbo].[TBLILETISIM]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TBLILETISIM];
GO
IF OBJECT_ID(N'[dbo].[TBLKASA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TBLKASA];
GO
IF OBJECT_ID(N'[dbo].[TBLKATEGORI]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TBLKATEGORI];
GO
IF OBJECT_ID(N'[dbo].[TBLKITAP]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TBLKITAP];
GO
IF OBJECT_ID(N'[dbo].[TBLMESAJLAR]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TBLMESAJLAR];
GO
IF OBJECT_ID(N'[dbo].[TBLPERSONEL]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TBLPERSONEL];
GO
IF OBJECT_ID(N'[dbo].[TBLUYELER]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TBLUYELER];
GO
IF OBJECT_ID(N'[dbo].[TBLYAZAR]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TBLYAZAR];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'TBLCEZALAR'
CREATE TABLE [dbo].[TBLCEZALAR] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [UYE] int  NULL,
    [HAREKET] int  NULL,
    [BASLANGIC] datetime  NULL,
    [BITIS] datetime  NULL,
    [PARA] decimal(18,2)  NULL
);
GO

-- Creating table 'TBLHAREKET'
CREATE TABLE [dbo].[TBLHAREKET] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [KITAP] int  NULL,
    [UYE] int  NULL,
    [PERSONEL] tinyint  NULL,
    [ALISTARIH] datetime  NULL,
    [IADETARIH] datetime  NULL,
    [ISLEMDURUM] bit  NULL,
    [UYEGETIRTARIH] datetime  NULL
);
GO

-- Creating table 'TBLKASA'
CREATE TABLE [dbo].[TBLKASA] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [AY] varchar(20)  NULL,
    [TUTAR] decimal(18,2)  NULL
);
GO

-- Creating table 'TBLKATEGORI'
CREATE TABLE [dbo].[TBLKATEGORI] (
    [ID] tinyint IDENTITY(1,1) NOT NULL,
    [AD] varchar(20)  NULL,
    [DURUM] bit  NULL
);
GO

-- Creating table 'TBLKITAP'
CREATE TABLE [dbo].[TBLKITAP] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [AD] varchar(50)  NULL,
    [KATEGORI] tinyint  NULL,
    [YAZAR] int  NULL,
    [BASIMYIL] char(4)  NULL,
    [YAYINEVI] varchar(50)  NULL,
    [SAYFA] varchar(4)  NULL,
    [DURUM] bit  NULL,
    [KITAPRESIM] varchar(250)  NULL
);
GO

-- Creating table 'TBLPERSONEL'
CREATE TABLE [dbo].[TBLPERSONEL] (
    [ID] tinyint IDENTITY(1,1) NOT NULL,
    [PERSONEL] varchar(50)  NULL
);
GO

-- Creating table 'TBLUYELER'
CREATE TABLE [dbo].[TBLUYELER] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [AD] varchar(20)  NULL,
    [SOYAD] varchar(20)  NULL,
    [MAIL] varchar(50)  NULL,
    [KULLANICIADI] varchar(20)  NULL,
    [SIFRE] varchar(20)  NULL,
    [FOTOGRAF] varchar(250)  NULL,
    [TELEFON] varchar(20)  NULL,
    [OKUL] varchar(100)  NULL
);
GO

-- Creating table 'TBLYAZAR'
CREATE TABLE [dbo].[TBLYAZAR] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [AD] varchar(30)  NULL,
    [SOYAD] varchar(30)  NULL,
    [DETAY] varchar(1000)  NULL
);
GO

-- Creating table 'TBLHAKKIMIZDA'
CREATE TABLE [dbo].[TBLHAKKIMIZDA] (
    [ID] tinyint IDENTITY(1,1) NOT NULL,
    [ACIKLAMA] varchar(max)  NULL
);
GO

-- Creating table 'TBLILETISIM'
CREATE TABLE [dbo].[TBLILETISIM] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [AD] varchar(50)  NULL,
    [MAIL] varchar(50)  NULL,
    [KONU] varchar(50)  NULL,
    [MESAJ] varchar(1000)  NULL
);
GO

-- Creating table 'TBLMESAJLAR'
CREATE TABLE [dbo].[TBLMESAJLAR] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [GONDEREN] varchar(50)  NULL,
    [ALICI] varchar(50)  NULL,
    [KONU] varchar(50)  NULL,
    [ICERIK] varchar(500)  NULL,
    [TARIH] datetime  NULL
);
GO

-- Creating table 'TBLDUYURULAR'
CREATE TABLE [dbo].[TBLDUYURULAR] (
    [ID] tinyint IDENTITY(1,1) NOT NULL,
    [KATEGORI] varchar(50)  NULL,
    [ICERIK] varchar(200)  NULL,
    [TARIH] datetime  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [ID] in table 'TBLCEZALAR'
ALTER TABLE [dbo].[TBLCEZALAR]
ADD CONSTRAINT [PK_TBLCEZALAR]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TBLHAREKET'
ALTER TABLE [dbo].[TBLHAREKET]
ADD CONSTRAINT [PK_TBLHAREKET]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TBLKASA'
ALTER TABLE [dbo].[TBLKASA]
ADD CONSTRAINT [PK_TBLKASA]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TBLKATEGORI'
ALTER TABLE [dbo].[TBLKATEGORI]
ADD CONSTRAINT [PK_TBLKATEGORI]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TBLKITAP'
ALTER TABLE [dbo].[TBLKITAP]
ADD CONSTRAINT [PK_TBLKITAP]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TBLPERSONEL'
ALTER TABLE [dbo].[TBLPERSONEL]
ADD CONSTRAINT [PK_TBLPERSONEL]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TBLUYELER'
ALTER TABLE [dbo].[TBLUYELER]
ADD CONSTRAINT [PK_TBLUYELER]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TBLYAZAR'
ALTER TABLE [dbo].[TBLYAZAR]
ADD CONSTRAINT [PK_TBLYAZAR]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TBLHAKKIMIZDA'
ALTER TABLE [dbo].[TBLHAKKIMIZDA]
ADD CONSTRAINT [PK_TBLHAKKIMIZDA]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TBLILETISIM'
ALTER TABLE [dbo].[TBLILETISIM]
ADD CONSTRAINT [PK_TBLILETISIM]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TBLMESAJLAR'
ALTER TABLE [dbo].[TBLMESAJLAR]
ADD CONSTRAINT [PK_TBLMESAJLAR]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TBLDUYURULAR'
ALTER TABLE [dbo].[TBLDUYURULAR]
ADD CONSTRAINT [PK_TBLDUYURULAR]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [HAREKET] in table 'TBLCEZALAR'
ALTER TABLE [dbo].[TBLCEZALAR]
ADD CONSTRAINT [FK_TBLCEZALAR_TBLHAREKET]
    FOREIGN KEY ([HAREKET])
    REFERENCES [dbo].[TBLHAREKET]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TBLCEZALAR_TBLHAREKET'
CREATE INDEX [IX_FK_TBLCEZALAR_TBLHAREKET]
ON [dbo].[TBLCEZALAR]
    ([HAREKET]);
GO

-- Creating foreign key on [UYE] in table 'TBLCEZALAR'
ALTER TABLE [dbo].[TBLCEZALAR]
ADD CONSTRAINT [FK_TBLCEZALAR_TBLUYELER]
    FOREIGN KEY ([UYE])
    REFERENCES [dbo].[TBLUYELER]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TBLCEZALAR_TBLUYELER'
CREATE INDEX [IX_FK_TBLCEZALAR_TBLUYELER]
ON [dbo].[TBLCEZALAR]
    ([UYE]);
GO

-- Creating foreign key on [KITAP] in table 'TBLHAREKET'
ALTER TABLE [dbo].[TBLHAREKET]
ADD CONSTRAINT [FK_TBLHAREKET_TBLKITAP]
    FOREIGN KEY ([KITAP])
    REFERENCES [dbo].[TBLKITAP]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TBLHAREKET_TBLKITAP'
CREATE INDEX [IX_FK_TBLHAREKET_TBLKITAP]
ON [dbo].[TBLHAREKET]
    ([KITAP]);
GO

-- Creating foreign key on [UYE] in table 'TBLHAREKET'
ALTER TABLE [dbo].[TBLHAREKET]
ADD CONSTRAINT [FK_TBLHAREKET_TBLUYELER]
    FOREIGN KEY ([UYE])
    REFERENCES [dbo].[TBLUYELER]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TBLHAREKET_TBLUYELER'
CREATE INDEX [IX_FK_TBLHAREKET_TBLUYELER]
ON [dbo].[TBLHAREKET]
    ([UYE]);
GO

-- Creating foreign key on [KATEGORI] in table 'TBLKITAP'
ALTER TABLE [dbo].[TBLKITAP]
ADD CONSTRAINT [FK_TBLKITAP_TBLKATEGORI]
    FOREIGN KEY ([KATEGORI])
    REFERENCES [dbo].[TBLKATEGORI]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TBLKITAP_TBLKATEGORI'
CREATE INDEX [IX_FK_TBLKITAP_TBLKATEGORI]
ON [dbo].[TBLKITAP]
    ([KATEGORI]);
GO

-- Creating foreign key on [YAZAR] in table 'TBLKITAP'
ALTER TABLE [dbo].[TBLKITAP]
ADD CONSTRAINT [FK_TBLKITAP_TBLYAZAR]
    FOREIGN KEY ([YAZAR])
    REFERENCES [dbo].[TBLYAZAR]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TBLKITAP_TBLYAZAR'
CREATE INDEX [IX_FK_TBLKITAP_TBLYAZAR]
ON [dbo].[TBLKITAP]
    ([YAZAR]);
GO

-- Creating foreign key on [PERSONEL] in table 'TBLHAREKET'
ALTER TABLE [dbo].[TBLHAREKET]
ADD CONSTRAINT [FK_TBLHAREKET_TBLPERSONEL]
    FOREIGN KEY ([PERSONEL])
    REFERENCES [dbo].[TBLPERSONEL]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TBLHAREKET_TBLPERSONEL'
CREATE INDEX [IX_FK_TBLHAREKET_TBLPERSONEL]
ON [dbo].[TBLHAREKET]
    ([PERSONEL]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------