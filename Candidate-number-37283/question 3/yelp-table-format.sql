CREATE DATABASE IF NOT EXISTS datab;

USE datab;

DROP TABLE IF EXISTS yelp;

CREATE EXTERNAL TABLE yelp (
  user_id STRING,
  name STRING,
  review_count INT,
  yelping_since STRING,
  friends array<STRING>,
  useful INT,
  funny INT,
  cool INT,
  fans INT,
  elite array<STRING>,
  average_stars FLOAT,
  compliment_hot INT,
  compliment_more  INT,
  compliment_profile INT,
  compliment_list INT,
  compliment_note INT,
  compliment_plain INT,
  compliment_cool INT,
  compliment_funny INT,
  compliment_writer INT,
  compliment_photos INT,
  type STRING
)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
stored as textfile
LOCATION 'gs://st446-w3/yelp_academic_dataset_user.json';