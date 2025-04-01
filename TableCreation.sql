-- Create dataebase
CREATE DATABASE CALLCENTER;

USE callcenter;

DELETE FROM ccdata
WHERE call_timestamp = "########";

-- Correct date data type
SET SQL_SAFE_UPDATES = 0;

UPDATE ccdata
SET call_timestamp = str_to_date(call_timestamp, "%m/%d/%Y");

SET SQL_SAFE_UPDATES = 1;

-- Rename column
ALTER TABLE ccdata
RENAME COLUMN `call duration in minutes`
TO call_duration;

SELECT *
FROM ccdata
LIMIT 10;


