-- query 4 : Tentukan nama produk terlaris dengan total amount terbanyak!
SELECT
  product.Product_Name,
  SUM(TotalAmount) AS total_amount
FROM
  `fir-chatting-4da10.case_study_data_scientist_kalbe.product` AS product
JOIN
  `fir-chatting-4da10.case_study_data_scientist_kalbe.transaction` AS transaction
  ON product.ProductID = transaction.ProductID
GROUP BY
  1
ORDER BY
  2 DESC
LIMIT 4