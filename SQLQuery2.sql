Create Table tbl_country(
  country_id int IDENTITY(1,1) NOT NULL,
  [country_name] [varchar] (50) NOT NULL,
  [active_flag] [smallint] NOT NULL,
  [isDelete] [int] NOT NULL,
 CONSTRAINT [PK_tbl_country] PRIMARY KEY CLUSTERED(
     
	    [country_id] ASC
)WITH (PAD_INDEX= OFF, STATISTICS_NORECOMPUTE =OFF ,IGNORE_DUP_KEY =OFF, ALLOW_ROW_LOCK =
)ON [PRIMARY]
GO