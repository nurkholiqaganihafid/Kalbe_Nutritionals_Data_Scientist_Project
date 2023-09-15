-- query 2 : Berapa rata-rata umur customer jika dilihat dari gender nya ?
SELECT
  CASE
    WHEN Gender = 0 THEN 'Female'
    WHEN Gender = 1 THEN 'Male'
    ELSE 'Unknown'
  END AS Gender,
  ROUND(AVG(Age)) AS average_age
FROM
  `fir-chatting-4da10.case_study_data_scientist_kalbe.customer`
GROUP BY
  Gender