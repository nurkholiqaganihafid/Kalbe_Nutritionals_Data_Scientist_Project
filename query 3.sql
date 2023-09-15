-- query 3 : Tentukan nama store dengan total quantity terbanyak!
SELECT
  store.StoreName,
  SUM(Qty) AS total_qty
FROM
  `fir-chatting-4da10.case_study_data_scientist_kalbe.store` AS store
JOIN
  `fir-chatting-4da10.case_study_data_scientist_kalbe.transaction` AS transaction
  ON store.StoreID = transaction.StoreID
GROUP BY
  1
ORDER BY
  2 DESC
LIMIT 4