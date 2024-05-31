USE Youtube

SELECT *
  FROM [Youtube].[dbo].[VideoInfo]

SELECT *
  FROM [Youtube].[dbo].[Comments]
  
  
  --Questions 1
  -- What are the most commented-upon videos? Or the most liked?
	SELECT 
	VideoID
	,MAX(Comments) AS Comments
	FROM [Youtube].[dbo].[VideoInfo]
	GROUP BY  VideoID
	ORDER BY Comments DESC
	
	--Answer: Videoid 'FzG4uDgje3M (El Chombo - Dame Tu Cosita feat. Cutty Ranks (Official Video) [Ultra Music]'
	--has the hightest comment of 73,2818, followed by Video ID 'dg2Ag3e8W-Q' with a comment of 72,8774


  --Questions 2
  -- What are the most liked Videos?
	SELECT 
	VideoID
	,MAX(Likes) AS Likes
	FROM [Youtube].[dbo].[VideoInfo]
	GROUP BY VideoID
	ORDER BY Likes DESC
	
--Answer: Videoid 'FzG4uDgje3M (El Chombo - Dame Tu Cosita feat. Cutty Ranks (Official Video) [Ultra Music])' has the hightest likes of 16,445,558, followed by Video ID '0e3GPea1Tyg' with likes of 14,259,033


--Questions 3
  -- What are the most viewed Videos?
	SELECT 
	VideoID
	,MAX(VideoViews) AS VideoViews
	,Title
	FROM [Youtube].[dbo].[VideoInfo]
	GROUP BY VideoID, Title
	ORDER BY VideoViews DESC
	
--Answer: Videoid 'FzG4uDgje3M' has the highest view


--QUESTION 4
--	What is the ratio of views/likes per video? Per each category?

SELECT 
    VideoID,
    CASE 
        WHEN Likes = 0 THEN 0  -- Avoid divide by zero error
        ELSE VideoViews / Likes  -- Calculate ratio if Likes is not zero
    END AS ViewPerLikeRatio
FROM 
    [Youtube].[dbo].[VideoInfo]




--Questions 5
--What is the average sentiment score in each keyword category?
SELECT  
	   vid.Keyword
      ,AVG(comm.[Sentiment]) AS Sentiment
FROM [Youtube].[dbo].[Comments] AS comm
LEFT JOIN [Youtube].[dbo].[VideoInfo] AS vid
ON comm.[Video ID] = vid.VideoID
GROUP BY vid.Keyword
ORDER BY Sentiment DESC
--Answer: The average sentiment in each keyword 1 aside aside 'cnn' and 'news' with a sentiment of 0


--QUESTION 5 solved using CTE Expression
WITH videoCommentTable AS
(
SELECT  
		comm.ColumnOne
		,comm.[Sentiment] AS Sentiment
		,comm.[Video ID]
		,comm.Likes
		,comm.Comment
	  , vid.Keyword
	  
FROM [Youtube].[dbo].[Comments] AS comm
LEFT JOIN [Youtube].[dbo].[VideoInfo] AS vid
ON comm.[Video ID] = vid.VideoID
)
SELECT Keyword, AVG(Sentiment) AS Sentiment FROM videoCommentTable 
GROUP BY Keyword
ORDER BY Sentiment DESC

--Answer: The average sentiment in each keyword 1 aside aside 'cnn' and 'news' with a sentiment of 0


--Question 6
--	How many times do company names (i.e., Apple or Samsung) appear in each keyword category?
SELECT * FROM VideoInfo

SELECT COUNT(Keyword)AS AppleKeywordCount
FROM dbo.VideoInfo
WHERE Keyword = 'Apple'


--Answer: The Apple keyword appeared 42 times while the keyword 'samsung' is not found in the table 


	