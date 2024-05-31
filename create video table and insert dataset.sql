CREATE TABLE VideoInfo(
Column1  INT IDENTITY (1,1),
VideoID NVARCHAR (MAX),
PublishedAt DATE,
Keyword VARCHAR (MAX),
Likes BIGINT,
Comments BIGINT,
VideoViews BIGINT,
Title NVARCHAR (MAX)
);


GO


  BULK INSERT dbo.VideoInfo
  FROM 'C:\Users\Ann\Desktop\linkedin worthy\sql\sql linkedin project\VideosStats.csv'

  WITH(
  CODEPAGE = 'ACP',
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n',
  FIRSTROW = 2
  )

  SELECT * FROM dbo.VideoInfo




  --Delete dbo.VideoContent
  --WHERE VideoID = '#NAME?'

 