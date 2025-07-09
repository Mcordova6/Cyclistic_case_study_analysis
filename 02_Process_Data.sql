-- Created a BigQuery table containing the new cleaned data
CREATE TABLE `test-project-461721.cyclistic_bike_share_data.cleaned_rides_12_months` AS

-- Cleaned data (Removed nulls, duplicates, and extra spaces as well as created new columns)
SELECT DISTINCT
  TRIM(ride_id) AS ride_id,
  TRIM(rideable_type) AS rideable_type,
  TRIM(start_station_name) AS start_station_name,
  TRIM(start_station_id) AS start_station_id,
  TRIM(end_station_name) AS end_station_name,
  TRIM(end_station_id) AS end_station_id,
  TRIM(member_casual) AS member_casual,
  CONCAT(start_lat,",", " ", start_lng) AS start_lat_lng,
  CONCAT(end_lat,",", " ", end_lng) AS end_lat_lng,
  started_at,
  ended_at,
  FORMAT_TIMESTAMP('%H', started_at) AS hour_started,
  TIMESTAMP_DIFF(ended_at, started_at, HOUR) AS hours_duration,
  FORMAT_TIMESTAMP('%B', started_at) AS month,
  FORMAT_TIMESTAMP('%A', started_at) AS day_name,
  EXTRACT(YEAR FROM started_at) AS year
FROM `test-project-461721.cyclistic_bike_share_data.rides_12_months`
WHERE
  ride_id IS NOT NULL
  AND rideable_type IS NOT NULL
  AND started_at IS NOT NULL
  AND ended_at  IS NOT NULL
  AND start_station_name IS NOT NULL
  AND start_station_id IS NOT NULL
  AND end_station_name IS NOT NULL
  AND end_station_id IS NOT NULL
  AND start_lat IS NOT NULL
  AND start_lng IS NOT NULL
  AND end_lat IS NOT NULL
  AND end_lng IS NOT NULL
  AND member_casual IS NOT NULL
