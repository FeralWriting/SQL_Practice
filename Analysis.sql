USE callcenter;

-- View totals
SELECT COUNT(*)
AS rows_num
FROM ccdata;

SELECT COUNT(*)
AS cols_num
FROM information_schema.columns
WHERE table_name = "ccdata";

-- Identify the different input types
SELECT DISTINCT sentiment
FROM ccdata;
SELECT DISTINCT reason
FROM ccdata;
SELECT DISTINCT channel
FROM ccdata;
SELECT DISTINCT response_time
FROM ccdata;
SELECT DISTINCT call_center
FROM ccdata;

-- Show the frequency of inputs per column
SELECT sentiment,
	COUNT(*),
    ROUND((COUNT(*) / (SELECT COUNT(*) FROM ccdata)) * 100, 1)
	AS pct
FROM ccdata
GROUP BY 1
ORDER BY 3
DESC;

SELECT reason,
	COUNT(*),
    ROUND((COUNT(*) / (SELECT COUNT(*) FROM ccdata)) * 100, 1)
	AS pct
FROM ccdata
GROUP BY 1
ORDER BY 3
DESC;

SELECT channel,
	COUNT(*),
    ROUND((COUNT(*) / (SELECT COUNT(*) FROM ccdata)) * 100, 1)
	AS pct
FROM ccdata
GROUP BY 1
ORDER BY 3
DESC;

SELECT response_time,
	COUNT(*),
    ROUND((COUNT(*) / (SELECT COUNT(*) FROM ccdata)) * 100, 1)
	AS pct
FROM ccdata
GROUP BY 1
ORDER BY 3
DESC;

SELECT call_center,
	COUNT(*),
    ROUND((COUNT(*) / (SELECT COUNT(*) FROM ccdata)) * 100, 1)
	AS pct
FROM ccdata
GROUP BY 1
ORDER BY 3
DESC;

SELECT state,
	COUNT(*),
    ROUND((COUNT(*) / (SELECT COUNT(*) FROM ccdata)) * 100, 1)
	AS pct
FROM ccdata
GROUP BY 1
ORDER BY 3
DESC;

-- Aggregate and compare different columns
SELECT DAYNAME(call_timestamp)
AS day_of_call,
	COUNT(*) num_of_calls
FROM ccdata
GROUP BY 1
ORDER BY 2
DESC;


SELECT MIN(csat_score)
	AS min_score,
	MAX(csat_score)
    AS max_score,
    ROUND(AVG(csat_score), 1)
    AS avg_score
FROM ccdata
WHERE csat_score != 0;

SELECT MIN(call_timestamp)
	AS earliest_date,
	MAX(call_timestamp)
    AS most_recent
FROM ccdata;

SELECT MIN(call_duration)
	AS min_call_duration,
	MAX(call_duration)
    AS max_call_duration,
	AVG(call_duration)
    AS avg_call_duration
FROM ccdata;

SELECT call_center,
	response_time,
	COUNT(*)
    AS count
FROM ccdata
GROUP BY 1, 2
ORDER BY 1, 3
DESC;

SELECT call_center,
	AVG(call_duration)
FROM ccdata
GROUP BY 1
ORDER BY 2
DESC;

SELECT CHANNEL,
	AVG(call_duration)
FROM ccdata
GROUP BY 1
ORDER BY 2
DESC;

SELECT state,
	COUNT(*)
FROM ccdata
GROUP BY 1
ORDER BY 2
DESC;

SELECT state,
	reason,
	COUNT(*)
FROM ccdata
GROUP BY 1, 2
ORDER BY 1, 2, 3
DESC;

SELECT state,
	sentiment,
	COUNT(*)
FROM ccdata
GROUP BY 1, 2
ORDER BY 1, 3
DESC;

SELECT state,
	AVG(csat_score)
    AS avg_csat_score
FROM ccdata
WHERE csat_score != 0
GROUP BY 1
ORDER BY 2
DESC;

SELECT sentiment,
	AVG(call_duration)
FROM ccdata
GROUP BY 1
ORDER BY 2
DESC;
