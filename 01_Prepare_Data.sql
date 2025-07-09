-- Created new BigQuery table with unionized data
CREATE TABLE `test-project-461721.cyclistic_bike_share_data.rides_12_months` AS

-- Unionized all the datasets from June 2024 to May 2025
SELECT * FROM `test-project-461721.cyclistic_bike_share_data.202406-divvy-tripdata`
UNION ALL
SELECT * FROM `test-project-461721.cyclistic_bike_share_data.202407-divvy-tripdata`
UNION ALL
SELECT * FROM `test-project-461721.cyclistic_bike_share_data.202408-divvy-tripdata`
UNION ALL
SELECT * FROM `test-project-461721.cyclistic_bike_share_data.202409-divvy-tripdata`
UNION ALL
SELECT * FROM `test-project-461721.cyclistic_bike_share_data.202410-divvy-tripdata`
UNION ALL
SELECT * FROM `test-project-461721.cyclistic_bike_share_data.202411-divvy-tripdata`
UNION ALL
SELECT * FROM `test-project-461721.cyclistic_bike_share_data.202412-divvy-tripdata`
UNION ALL
SELECT * FROM `test-project-461721.cyclistic_bike_share_data.202501-divvy-tripdata`
UNION ALL
SELECT * FROM `test-project-461721.cyclistic_bike_share_data.202502-divvy-tripdata`
UNION ALL
SELECT * FROM `test-project-461721.cyclistic_bike_share_data.202503-divvy-tripdata`
UNION ALL
SELECT * FROM `test-project-461721.cyclistic_bike_share_data.202504-divvy-tripdata`
UNION ALL
SELECT * FROM `test-project-461721.cyclistic_bike_share_data.202505-divvy-tripdata`
