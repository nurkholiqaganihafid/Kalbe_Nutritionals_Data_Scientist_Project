-- query 1 : Berapa rata-rata umur customer jika dilihat dari marital statusnya ?
SELECT
  Marital_Status,
  ROUND(AVG(Age)) AS average_age
FROM
  `fir-chatting-4da10.case_study_data_scientist_kalbe.customer`
WHERE 
  Marital_Status IS NOT NULL
GROUP BY
  Marital_Status