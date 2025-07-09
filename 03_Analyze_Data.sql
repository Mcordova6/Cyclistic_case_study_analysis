-- Members' Ride Amount Variations (By Week in 2025)
SELECT day_name, COUNTIF(member_casual='member') AS member_count, COUNTIF(member_casual='casual') AS casual_count
FROM `test-project-461721.cyclistic_bike_share_data.cleaned_rides_12_months` 
WHERE year = 2025
GROUP BY day_name
ORDER BY member_count DESC

-- Casual Riders' Ride Amount Variations (By Week in 2025)
SELECT day_name, COUNTIF(member_casual='member') AS member_count, COUNTIF(member_casual='casual') AS casual_count
FROM `test-project-461721.cyclistic_bike_share_data.cleaned_rides_12_months` 
WHERE year = 2025
GROUP BY day_name
ORDER BY casual_count DESC

-- Most Popular Month (Sorted by member_count)
SELECT month, COUNTIF(member_casual='member') AS member_count, COUNTIF(member_casual='casual') AS casual_count
FROM `test-project-461721.cyclistic_bike_share_data.cleaned_rides_12_months` 
GROUP BY month
ORDER BY member_count DESC

-- Most Popular Month (Sorted by casual_count)
SELECT month, COUNTIF(member_casual='member') AS member_count, COUNTIF(member_casual='casual') AS casual_count
FROM `test-project-461721.cyclistic_bike_share_data.cleaned_rides_12_months` 
GROUP BY month
ORDER BY casual_count DESC

-- Top 3 Start Stations (Sorted by member_count)
SELECT start_station_name, COUNTIF(member_casual='member') AS member_count, COUNTIF(member_casual='casual') AS casual_count
FROM `test-project-461721.cyclistic_bike_share_data.cleaned_rides_12_months` 
GROUP BY start_station_name 
ORDER BY member_count DESC

-- Top 3 Start Stations (Sorted by casual_count)
SELECT start_station_name, COUNTIF(member_casual='member') AS member_count, COUNTIF(member_casual='casual') AS casual_count
FROM `test-project-461721.cyclistic_bike_share_data.cleaned_rides_12_months` 
GROUP BY start_station_name 
ORDER BY casual_count DESC

-- Top 3 End Stations (Sorted by member_count)
SELECT end_station_name, COUNTIF(member_casual='member') AS member_count, COUNTIF(member_casual='casual') AS casual_count
FROM `test-project-461721.cyclistic_bike_share_data.cleaned_rides_12_months` 
GROUP BY end_station_name
ORDER BY member_count DESC

-- Top 3 End Stations (Sorted by casual_count)
SELECT end_station_name, COUNTIF(member_casual='member') AS member_count, COUNTIF(member_casual='casual') AS casual_count
FROM `test-project-461721.cyclistic_bike_share_data.cleaned_rides_12_months` 
GROUP BY end_station_name
ORDER BY casual_count DESC

-- Differences in Hour Duration (Sorted by member_count)
SELECT hours_duration, COUNTIF(member_casual='member') AS member_count, COUNTIF(member_casual='casual') AS casual_count
FROM `test-project-461721.cyclistic_bike_share_data.cleaned_rides_12_months` 
GROUP BY hours_duration
ORDER BY member_count DESC

-- Differences in Hour Duration (Sorted by casual_count)
SELECT hours_duration, COUNTIF(member_casual='member') AS member_count, COUNTIF(member_casual='casual') AS casual_count
FROM `test-project-461721.cyclistic_bike_share_data.cleaned_rides_12_months` 
GROUP BY hours_duration
ORDER BY casual_count DESC

-- Differences in Hour Started (Sorted by member_count)
SELECT hour_started, COUNTIF(member_casual='member') AS member_count, COUNTIF(member_casual='casual') AS casual_count
FROM `test-project-461721.cyclistic_bike_share_data.cleaned_rides_12_months` 
GROUP BY hour_started
ORDER BY member_count DESC

-- Differences in Hour Started (Sorted by casual_count)
SELECT hour_started, COUNTIF(member_casual='member') AS member_count, COUNTIF(member_casual='casual') AS casual_count
FROM `test-project-461721.cyclistic_bike_share_data.cleaned_rides_12_months` 
GROUP BY hour_started
ORDER BY casual_count DESC

-- Preferred Rideable Type (Members & Casual Riders)
SELECT rideable_type, COUNTIF(member_casual='member') AS member_count, COUNTIF(member_casual='casual') AS casual_count
FROM `test-project-461721.cyclistic_bike_share_data.cleaned_rides_12_months` 
GROUP BY rideable_type
ORDER BY member_count DESC
