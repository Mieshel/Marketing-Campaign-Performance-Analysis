# Marketing-Campaign-Performance-Analysis


![Screenshot 2025-05-05 010412](https://github.com/user-attachments/assets/bc9ea877-2bbb-4686-8636-2d019ffde6c3)


# Introduction
This report provides an overview of the SQL based data analysis conducted to evaluate the performance of marketing campaigns across various channels  Facebook, Instagram, and Pinterest. The goal was to extract key insights to guide marketing spend and strategic decisions.

# Problem Statement 
The objective is to clean and analyze the existing database to gain insights into the effectiveness of our campaigns, optimize our Ad spend, and improve future marketing strategies and overall customer satisfaction.

# Data Source
Savill Analytics provided the data to be used for the analysis to write fully functioning SQL queries to help make strategic decisions.

The data was stored in a single table named *campaign_data*, containing records of daily ad metrics. Key columns included:

*Campaign, Date, Channel, City/Location, Device, Ad*

*Impressions, Clicks, Spend, Conversions, Total conversion value*

*Likes, Shares, Comments*

# Key Performance Indicators (KPIs)
We derived the following KPIs using SQL queries:

Click-Through Rate (CTR) = (Clicks / Impressions) * 100

Cost Per Click (CPC) = Spend / Clicks

Conversion Rate = (Conversions / Clicks) * 100

Revenue = Total conversion value

Return on Investment (ROI) = ((Total conversion value - Spend) / Spend) * 100

Engagement Rate = ((Likes + Shares + Comments) / Impressions) * 100

# Case Study

This case study has been divided into distinct sections to critically analyze and evaluate the data. The solutions to the key questions have been presented using SQL queries and are highlighted as follows:
1. Campaign Performance
2. Channel Effectiveness
3. Geographical Insights
4. Device Performance
5. Ad-Level Analysis
6. ROI Calculation
7. 	Time Series Analysis

## 1.	Campaign Performance:
 
Q1. Which campaign generated the highest number of impressions, clicks, and conversions?

![image](https://github.com/user-attachments/assets/4b0a0993-3274-47c7-bce2-d78c56ae9efa)

![Screenshot 2025-05-04 001858](https://github.com/user-attachments/assets/8d592b2f-db6b-41b4-84d4-5d5499a6c16a)
       
       Fall Campaign  generated the Highest total of impressions, clicks, and conversions.
    


Q2. What is the average cost-per-click (CPC) and click-through rate (CTR) for each campaign?

![image](https://github.com/user-attachments/assets/95717fc3-6763-4c90-90ad-2904de7f63aa)

![Screenshot 2025-05-04 084559](https://github.com/user-attachments/assets/39f3048a-d7e1-488c-a69a-588a35c87bfe)

        The Average CTR across all Campaign is 0.01 = 1%
        While The Average CPC for Summer, Fall and Spring are within the range of  0.86 to 0.93




## 2.	Channel Effectiveness:
   
Q1.	Which channel has the highest ROI?

![image](https://github.com/user-attachments/assets/470a9e17-fe5b-4a43-a4ef-d18935543d64)

![Screenshot 2025-05-04 092327](https://github.com/user-attachments/assets/6ccc42c3-7345-4b46-bee2-d616ae741f9a)

          Pinterest had the highest Return on Investment (ROI) amongst all other Channels.



Q2.	How do impressions, clicks, and conversions vary across different channels?

![image](https://github.com/user-attachments/assets/3b4356da-a11e-4c8b-9660-feb956a310d0)


![Screenshot 2025-05-04 093146](https://github.com/user-attachments/assets/8bf9254c-c76c-41e2-8033-46bc64c86398) 


Across all channels, Facebook recorded the highest total impressions with 5,439,591 and the highest number of clicks at 69,961. 
Instagram led in total conversions, achieving 15,590



## 3.	Geographical Insights:
   
Q1.	Which cities have the highest engagement rates?

![image](https://github.com/user-attachments/assets/cc32d1f7-424b-4b24-8c4b-f390606e70df)


![Screenshot 2025-05-04 095514](https://github.com/user-attachments/assets/380a3b17-5c09-47f2-8aef-06bb6238b4ef)

     London recorded the highest total impressions with 285,706  


Q2.	What is the conversion rate by city?

![image](https://github.com/user-attachments/assets/2b5810e8-f237-4e17-8b11-e6d82b23a469)

![Screenshot 2025-05-04 100023](https://github.com/user-attachments/assets/15d4e7f6-e131-4d91-96d7-bd7d939d50d4)

     Birmingham recorded the highest conversion rate at 29% across all Cities.



## 4.	Device Performance:
   
Q1.	How do ad performances compare across different devices (mobile, desktop, tablet)?

![image](https://github.com/user-attachments/assets/73638861-0f8c-4363-aa7c-37ff0935a8da)


![Screenshot 2025-05-04 102527](https://github.com/user-attachments/assets/5fa15238-6219-41d4-a32b-acdae4dfefdf)

  Desktop delivered the highest number of Total Revenue and conversions, with a CTR of 1.53% and conversion rate of 23.99%.



Q2.	Which device type generates the highest conversion rates?

![image](https://github.com/user-attachments/assets/3861e962-5dd6-4ea8-bff3-863aed16ad02)

![Screenshot 2025-05-04 102103](https://github.com/user-attachments/assets/221028bd-8036-4018-b54e-184b4f3b8d93)

     Desktop delivered the highest number of conversion rate of 23.99%.


## 5.	Ad-Level Analysis:
   
Q1.	Which specific ads are performing best in terms of engagement and conversions?

![image](https://github.com/user-attachments/assets/10f1535b-e896-4485-a8b6-a61dd071a8e1)


![Screenshot 2025-05-04 104559](https://github.com/user-attachments/assets/6b14596b-7f1d-4a66-8544-6e28869297c2)

    Discount had the Best Performing Ads achieving a total conversion value of £1.07 million and total engagement of 459,629 
       

Q2.	What are the common characteristics of high-performing ads?

![image](https://github.com/user-attachments/assets/bbb2c3f3-a95c-4edb-8683-d7e89c69836f)

![Screenshot 2025-05-04 105810](https://github.com/user-attachments/assets/cbeb887e-85ce-4516-b330-2375917f8d9a)
![Screenshot 2025-05-04 105825](https://github.com/user-attachments/assets/909aee66-b297-4c03-afa4-aba3ded5c891)

    A strong correlation exists between high impressions (>150,000), engagement (>8,000), and conversion values





## 6.	ROI Calculation:
   
Q1.	What is the ROI for each campaign, and how does it compare across different channels and devices?

![image](https://github.com/user-attachments/assets/0d97ca08-b025-4e24-a76d-69176c448b65)

![Screenshot 2025-05-04 110402](https://github.com/user-attachments/assets/66baa5d2-0951-4677-b472-1100ed47a72b)

          Pinterest in Spring via Desktop achieved the Highest ROI at 34.95%


   
Q2.	How does spend correlate with conversion value across different campaigns?

![image](https://github.com/user-attachments/assets/6be26395-2106-41ec-bbb8-cf27c51156e6)


![Screenshot 2025-05-04 111607](https://github.com/user-attachments/assets/c7e38d55-c876-4bcf-b739-856b7b7e8ec6)

                Summer had the highest ROI with the lowest spend, showing high efficiency.Fall had the highest spend but the lowest ROI, indicating diminishing returns. Spring delivered solid ROI with moderate spend.


## 7.	Time Series Analysis:
   
Q1.	Are there any noticeable trends or seasonal effects in ad performance over time?

![image](https://github.com/user-attachments/assets/5a8d9cbe-1ab0-4db4-a632-ad8ba7bb6df3)

![Screenshot 2025-05-04 113222](https://github.com/user-attachments/assets/e2e2c32b-6677-4d63-a689-efac17eec6f7)

      Ad performance peaked in September to November, indicating strong seasonal demand. Summer months saw a dip, while CTR and CPC remained stable throughout.




Q2.	How do daily impressions, clicks, spend, and conversions fluctuate over the campaign period?

![image](https://github.com/user-attachments/assets/0fb66591-46d1-42e3-ae89-ca1eba1e209c)

![Screenshot 2025-05-04 115412](https://github.com/user-attachments/assets/3ce63a52-9312-4543-bd12-f65f60a5ccf8)

    The campaign scaled down significantly in Summer in terms of spend, impressions, and clicks, but maintained conversion levels.

    
# Recommendations

## Campaign Performance:

•	Scale high-performing campaigns by increasing budget allocation, especially those with low CPC and high CTR.
 
• Revise underperforming campaigns with low CTR or high CPC analyze their creatives, targeting, or channels.

## Channel Effectiveness:

• Allocate test budgets to underperforming channels to explore different ad formats or retargeting strategies.

• Prioritize investment in a broader variety of advertising channels to better understand audience behavior and uncover potentially untapped high-performing channels.

## Geographical Insights:

• Consider location specific offers to improve resonance and conversion.

## Device Performance:

• Optimize ad creatives for mobile-first experience, since mobile devices often dominates impressions and clicks.

• If conversion rate is higher on desktop, consider retargeting desktop users or designing device-specific landing pages.


## ROI Calculation:

• For campaigns with negative ROI, investigate inefficiencies—e.g., high CPCs, poor targeting, or weak creative.

## Time Series Analysis:

• Use past trends to create a performance forecast model to guide future Ads scheduling.

• reallocate budget during historically low performance periods and budget testing new strategies.



The company's  marketing campaign efforts have laid a strong foundation for digital engagement and brand visibility. With the insights uncovered in this analysis and by implementing the recommended strategies, 
there is high potential to boost campaign performance, and enhance audience targeting for improved ROI and long-term growth.










