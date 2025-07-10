# Cyclistic Case Study Analysis
This repository showcases my end-to-end workflow for the capstone project in the Google Data Analytics Certificate program. It reflects how I applied the key stages of the data analysis process (ask, prepare, process, analyze, share, and act) using tools like SQL and Tableau Public to derive actionable insights.

## Table of Contents
[Introduction](#introduction)  
[Ask](#ask)  
[Prepare](#prepare)  
[Process](#process)  
[Analyze](#analyze)  
[Share](#share)  
[Act](#act)

## Introduction
**Company:** Cyclistic  
**Location:** Chicago  
**Description:** Bike-Share Company  
**Position:** Junior Data Analyst   
**Tools Used:** Google Drive, BigQuery (SQL), and Tableau Public.  
**Deliverables:**  
>**1.** A clear statement of the business task.  
 **2.** A clear explanation of all the data sources I utilized.  
 **3.** Documentation of data cleaning or manipulation processes.  
 **4.** A short and clear summarization of my analysis.  
 **5.** Supporting data visualizations that illustrate findings.  
 **6.** Three recommendations based on my analysis.

## Ask
**Business Task:** It was concluded that annual members bring in more profit compared to casual riders; therefore, this analysis is being conducted to identify which factors to market in order to effectively convince casual riders to become annual members. I was provided with datasets consisting of customer information from the past 12 months and will be analyzing them to discover the components that differentiate members from casual riders. 

## Prepare
### Dataset Information:
**Dataset URL:** [divvy-tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html)    
**File Types:** `.csv`    
**Number of Rows:** 5M+    
**Date Range:** June 2024 – May 2025    
**Number of Files Downloaded:** 12 (One for each month)    
**Column Names:** `ride_id`, `rideable_type`, `started_at`, `ended_at`, `start_station_name`, `start_station_id`, `end_station_name`, `end_station_id`, `start_lat`, `start_lng`, `end_lat`,` end_lng`, and `member_casual`.

### Preparation Process:
**1.** Downloaded all the datasets with customer information from the past 12 months.  
**2.** Transferred the files into Google Drive.  
**3.** Created a table for each dataset in BigQuery.  
**4.** Previewed each table to ensure consistent formatting.  
**5.** Ran query in order to unionize the information from all the datasets into a single table using `UNION ALL` and `CREATE TABLE`.  
**6.** Documented each step in order to ensure reproducibility.
### SQL Code:
[Prepare SQL Code](./01_Prepare_Data.sql)  

## Process
### BigQuery Cleaning Process:  
**1.** Removed all null values from each column using `IS NOT NULL` (Reduced the number of rows to 3,959,660).  
**2.** Removed all duplicate values using `DISTINCT`.  
**3.** Removed extra spaces using `TRIM()`.  
**4.** Combined start_lat and start_lng using `CONCAT()`.  
**5.** Combined end_lat and end_lng using `CONCAT()`.  
**6.** Created separate columns for different values from the `started_at` column including hour, day name, and month using `FORMAT_TIMESTAMP()` as well as year using `EXTRACT()`.    
**7.** Created a separate column for the duration of rides in hours using `TIMESTAMP_DIFF()`.  
**8.** Created a separate table containing the cleaned data using `CREATE TABLE`.
### SQL Code:
[Process SQL Code](./02_Process_Data.sql)  

## Analyze
### Analytical Findings:
#### 1. Ride Amount Variations (By Week)
* **Members:** Members use our products most frequently during the week, peaking specifically during Thursday (in 2025) and Wednesday (in 2024).  
* **Casual Riders:** Casual riders use our products most frequently during the weekend, peaking specifically during Saturday (in both 2025 and 2024).
#### 2. Most Popular Month
* **Members:** The month where the most members use our products is September.  
* **Casual Riders:** The month where the most casual riders use our products is July.
#### 3. Top 3 Start Stations
* **Members:** The top three start stations the most members utilize include those in `Kingsbury St & Kinzie St`, `Clinton St & Washington Blvd`, and `Clinton St & Madison St`.  
* **Casual Riders:** The top three start stations the most casual riders utilize include those in `Streeter Dr & Grand Ave`, `DuSable Lake Shore Dr & Monroe St`, and `Michigan Ave & Oak St`.
#### 4. Top 3 End Stations
* **Members:** The top three end stations the most members utilized include those in `Kingsbury St & Kinzie St`, `Clinton St & Washington Blvd`, and `Clinton St & Madison St`.  
* **Casual Riders:** The top three end stations the most casual riders utilize include those in `Streeter Dr & Grand Ave`, `DuSable Lake Shore Dr & Monroe St`, and `DuSable Lake Shore Dr & North Blvd`.
#### 5. Differences in Hour Duration
* Between members and casual riders, more casual riders utilize our products to take rides that surpass an hour in duration.
#### 6. Differences in Hour Started
* **Members:** Member usage of our products sees an initial peak at 8:00 UTC, followed by a higher peak at 17:00 UTC.
* **Casual Riders:** Usage by casual riders steadily increases each hour and reaches its peak at 17:00 UTC.
#### 7. Preferred Rideable Type
* The classic bike is the most preferred rideable type option among both members and casual riders.
### SQL Code:
[Analyze SQL Code](./03_Analyze_Data.sql)

## Share
I created a range of data visualizations, including bar charts, a pie chart, a line graph, and text tables, to represent insights from the Analyze phase. These visuals are compiled into an interactive dashboard, allowing for easy exploration and interpretation in one centralized view.  
### General Overview:
#### Top Rectangle:
Contains tile, color legend that changes depending on the client type selected, a toggle to choose to view the information of either a member or casual rider, and a dropdown filter to see the information from specific years.
#### Next Three Boxes: 
The first box displays the month with the highest number of riders from the selected client type, along with their total count for that month. The next two boxes contain text tables showing the top three most frequently used start and end stations by riders of the selected client type as well as the total number of those riders at each station.  
#### Next Two Boxes:
The first box features a bar chart displaying the number of riders from the selected client type who use our products on different days of the week. The second box presents a bar chart showing how many of these riders use our products for more than one hour.
#### Last Two Boxes:
The first box displays a line chart showing the number of riders from the selected client type who use our products at different hours of the day (in Coordinated Universal Time, UTC). The final box features a pie chart illustrating the percentage of these riders who use a classic bike, electric bike, or electric scooter.
#### Tips:
**1. Top Color Legend:** Pertains to all data visualizations except the pie chart.    
**2. Member/Casual Selection Toggle:** Affects all of the data visualizations.    
**3. Year Dropdown Filter:** Affects only the bar charts, line graph, and pie chart.     
### Dashboard Preview:
> ![Capstone Case Study (Dashboard)](https://github.com/user-attachments/assets/45bbcf60-56d1-4302-be3a-da0dc3a909b3)
> [View Tableau Dashboard](https://public.tableau.com/views/CapstoneCaseStudyOfficial/Dashboard2?:language=en-US&:sid=&:display_count=n&:origin=viz_share_link)

## Act
### Marketing Recommendations:
#### 1. 30-Day Free Trial    
Offer a 30-day free trial of the membership during July in order to give the highest number of casual riders an opportunity to experience utilizing our products during the week instead of solely on the weekend.  
#### 2. Reach Target Audience   
Advertise the free trial heavily during the weekends at the most popular stations among causual riders, which include `Streeter Dr & Grand Ave`, `DuSable Lake Shore Dr & Monroe St`, `Michigan Ave & Oak St`, and `DuSable Lake Shore Dr & North Blvd`, at 17:00 UTC, if possible, in order to reach target audience.  
#### 3. Tailor To Preferences
In the free trial advertisements, highlight the classic bike and emphasize its durability for long rides, as casual riders tend to prefer the classic bike and are more likely to use our products for over an hour.
