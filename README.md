# Youtube-Statistics-project
Data Analysis with SQL

This project is centered on analyzing YouTube statistics data using SQL queries. The dataset encompasses information on comments and video statistics, including likes, video ID, sentiment, comments, video views, and video titles.



# Project Highlights
Import Data from Excel to SSMS: The initial step involved creating a database to house the "Comments" and "Videos" datasets. After that, tables were created to hold the imported data. Data importation was carried out using BULK INSERT and INSERT commands.
## Exploratory Data Analysis:
Utilizes SQL queries to explore and analyze Youtube Statistics data.
Examines various aspects such as total comments, most popular videos, most liked video and several others.
## Insights and Visualizations:
I Explored a wide range of SQL statements and clauses, each revealing new layers of data manipulation and analysis:<br>
1 Created structured tables for effective data organization <br>
2 Leveraged IDENTITY PROPERTY for seamless ID generation <br>
3 Efficiently loaded data with BULK INSERT <br>
4 Dynamically added new data with INSERT STATEMENT <br>
5 Crafted precise data retrievals with SELECT STATEMENT <br>
6 Analyzed data thoroughly using AGGREGATE FUNCTIONS like MAX, AVERAGE, and SUM <br>
7 Sorted results effortlessly with ORDER BY <br>
8 Implemented dynamic logic with CASE WHEN <br>
9 Ensured query readability with Common Table Expressions (CTEs) <br>

# Project Source: DataQuest (Youtube Statistics)
[Click to see questions](https://www.dataquest.io/blog/sql-projects/)

# Data Source  
[click to download data sets](https://www.dataquest.io/blog/sql-projects/)

## See snippets
```
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
  FROM 'C:\Users\Ann\Desktop\linkedin worthy\sql\l\VideosStats.csv'

  WITH(
  CODEPAGE = 'ACP',
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n',
  FIRSTROW = 2
  )
}
```

## open file attached to see full script
I enjoyed working on the project!!!
