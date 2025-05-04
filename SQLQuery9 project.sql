
------------ ANALYSIS ON CAMPAIGN PERFORMANCE --------

--	Which campaign generated the highest number of impressions, clicks, and conversions//

SELECT  Campaign as Campaign_Name , SUM(Impressions) as  Impressions,
SUM (Clicks) as Number_of_clicks,
SUM(Conversions) as Number_of_Conversions
FROM project.dbo.SM_Marketing$
GROUP BY Campaign 
ORDER BY Impressions Desc ;

-- What is the average cost-per-click (CPC) and click-through rate (CTR) for each campaign ---

SELECT Campaign, Round( AVG([Daily Average CPC]),2) AS Average_cost_per_click, ROUND(AVG(CTR),2) AS Click_through_rate
FROM project.dbo.SM_Marketing$
GROUP BY Campaign;


-------------  CHANNEL EFFECTIVENESS ------------

--  Which channel has the highest ROI    ---

SELECT  Channel,  
 ROUND(
    ((SUM([Total conversion value, GBP]) - SUM([Spend, GBP])) / NULLIF(SUM([Spend, GBP]), 0)*100) , 
    0
  ) AS ROI
 FROM project.dbo.SM_Marketing$
GROUP BY  Channel
ORDER BY  ROI DESC; 

---	How do impressions, clicks, and conversions vary across different channels?
SELECT Channel, ROUND(SUM(Impressions), 0) AS Total_Impressions, SUM(Clicks) as Total_Clicks, SUM(Conversions) as Total_Conversions
FROM project.dbo.SM_Marketing$
GROUP BY Channel;



-------------  GEOGRAPHICAL INSIGHT  ------------

SELECT [City/Location], SUM([Likes (Reactions)]) AS Total_Likes, SUM(Shares) as Total_Shares, SUM(Comments) as Total_Comments,
SUM([Likes (Reactions)] + Shares + Comments) AS Total_Engagement
FROM project.dbo.SM_Marketing$
GROUP BY [City/Location]
ORDER BY Total_Engagement DESC;

-- What is the conversion rate by city?
--Conversion Rate = (Conversions / Clicks) × 100

SELECT [City/Location],
ROUND((SUM(Conversions) / NULLIF(SUM(clicks), 0 )*100),2) ConversionRate
FROM project.dbo.SM_Marketing$
GROUP BY [City/Location]
ORDER BY ConversionRate DESC;


-----Device Performance------
---How do ad performances compare across different devices (mobile, desktop, tablet)?-----

SELECT 
  Device,
  ROUND(SUM(Impressions), 0) AS Total_Impressions,
  SUM(Clicks) AS Total_Clicks,
  ROUND(SUM(Clicks) * 100.0 / NULLIF(SUM(Impressions), 0), 2) AS CTR_Percent,
  SUM(Conversions) AS Total_Conversions,
  ROUND(SUM(Conversions) * 100.0 / NULLIF(SUM(Clicks), 0), 2) AS ConversionRate_Percent,
  ROUND(SUM([Total conversion value, GBP]),0) AS Total_Revenue,
  SUM([Spend, GBP]) AS Total_Spend,
  ROUND((SUM([Total conversion value, GBP]) - SUM([Spend, GBP])) * 100.0 / NULLIF(SUM([Spend, GBP]), 0), 2) AS ROI_Percent
FROM  project.dbo.SM_Marketing$
GROUP BY   Device;


-----Which device type generates the highest conversion rates?
 SELECT 
  Device,
  ROUND(SUM(Conversions) * 100.0 / NULLIF(SUM(Clicks), 0), 2) AS ConversionRate_Percent
FROM  project.dbo.SM_Marketing$
GROUP BY   Device;


---	AD-LEVEL ANALYSIS -----

--- Which specific ads are performing best in terms of engagement and conversions ----

SELECT Ad,ROUND(SUM([Total conversion value, GBP]),2) AS Total_conversion ,
SUM([Likes (Reactions)] + Shares + Comments) AS Total_Engagement
FROM project.dbo.SM_Marketing$
GROUP BY Ad;

--- What are the common characteristics of high-performing ads ---


SELECT TOP 20 Ad Campaign,Channel, [City/Location],Device,
SUM(Impressions) as Impression,SUM([Daily Average CPC]) Average_CPC,
ROUND(SUM([Total conversion value, GBP]),2) AS Total_conversion,
SUM([Likes (Reactions)] + Shares + Comments) AS Total_Engagement
FROM project.dbo.SM_Marketing$
GROUP BY Ad, Campaign, Channel,[City/Location],Device
ORDER BY  Total_conversion DESC;


----- ROI CACULATION ---------


---- What is the ROI for each campaign, and how does it compare across different channels and devices ------

 SELECT Campaign, Channel, Device, 
 ROUND(
    SUM([Total conversion value, GBP]) * 1.0 / NULLIF(SUM([Spend, GBP]), 0), 
    2
  ) AS ROI
 FROM project.dbo.SM_Marketing$
GROUP BY Ad, Campaign, Channel, Device
ORDER BY  ROI DESC; 


--- How does spend correlate with conversion value across different campaigns---

SELECT Campaign, SUM([Spend, GBP]) AS Spend_GBP , ROUND(SUM([Total conversion value, GBP]),2) as Total_Conversion_GBP
 FROM project.dbo.SM_Marketing$
GROUP BY  Campaign;

SELECT  FORMAT([Date], 'yyyy-MM') AS Month,
  SUM(Impressions) AS Total_Impressions,
  SUM(Clicks) AS Total_Clicks,
  ROUND(SUM(Conversions),2) AS Total_Daily_Conversions,
  SUM([Spend, GBP]) AS Total_Spend,
   ROUND(SUM(CTR),2) AS CTR , ROUND(SUM([Total conversion value, GBP]),2) AS Total_conversion ,SUM([Likes (Reactions)] + Shares + Comments) AS Total_Engagement
 FROM project.dbo.SM_Marketing$
 GROUP BY  FORMAT([Date], 'yyyy-MM');

-- How do daily impressions, clicks, spend, and conversions fluctuate over the campaign period?

SELECT Campaign, FORMAT([Date], 'yyyy-MM-dd') as Campaign_Period ,SUM(Impressions) AS Total_Impressions, SUM(Clicks) as Total_Clicks, SUM(Conversions) as Total_Conversions
FROM project.dbo.SM_Marketing$
GROUP BY Campaign, FORMAT([Date], 'yyyy-MM-dd')   
ORDER BY Campaign_Period  

SELECT* FROM project.dbo.SM_Marketing$