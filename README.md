<div id="top"></div>

# 📌Kalbe_Nutritionals_Data_Scientist_Project
- In this project, I use the Machine Learning Regression (Time Series) method to predict the number of daily sales of Kalbe products
  - The main purpose of this analysis is to help the inventory team make sufficient daily inventory
  - Helps find out every daily product sold
- Apart from that, we also use the Machine Learning Clustering method to segment customers based on several criteria
  - The purpose of Clustering is to assist the marketing team in providing promotions and personal sales treatment to customers.

The data link contains each column's information: [Case Study - Legend](https://github.com/nurkholiqaganihafid/Kalbe_Nutritionals_Data_Scientist_Project/blob/main/content/Case%20Study%20-%20Legend.txt)


# 🎯This is the Link to the Results of My Presentation
<p align="center">
  <img alt="Presentation" title="Presentation" src="https://github.com/nurkholiqaganihafid/Kalbe_Nutritionals_Data_Scientist_Project/assets/89395541/27ef20d3-529b-4244-b468-a1b7f6817169" width="500">
</p>

My Youtube Channel: [Presentation](https://youtu.be/ei9wMbJKo4A)


# 🎯Let's Begin with the Results
## 📊Dashboard
My Tableau Profile: [My Tableau](https://public.tableau.com/app/profile/nurkholiq.agani.hafid/vizzes)
- Exploratory Data Sales Analysis Dashboard
<p align="center">
  <img alt="Exploratory Data Sales Analysis Dashboard" title="Exploratory Data Sales Analysis Dashboard" src="https://github.com/nurkholiqaganihafid/Kalbe_Nutritionals_Data_Scientist_Project/assets/89395541/1e159c66-2248-46aa-ac32-ead3f3cbc46e" width="750">
</p>

- Daily and Monthly Sales Analysis Dashboard
<p align="center">
  <img alt="Daily and Monthly Sales Analysis Dashboard" title="Daily and Monthly Sales Analysis Dashboard" 
 src="https://github.com/nurkholiqaganihafid/Kalbe_Nutritionals_Data_Scientist_Project/assets/89395541/a10e110c-0888-4ebb-8bf1-dc2d6a86aaf4" width="750">
</p>


## 📈My Prediction Results
### Data Preparation
- Forecasting Data
```python
df_forecast = df.groupby('date')[['qty']].sum()
```
<p align="center">
  <img alt="Forecasting Data" title="Forecasting Data" src="https://github.com/nurkholiqaganihafid/Kalbe_Nutritionals_Data_Scientist_Project/assets/89395541/b01dba0a-8ac3-49dd-b097-a56ea1c345a3" width="200">
</p>

- Total Data from the Merge Results
<p align="center">
  <img alt="Data Frame" title="Data Frame" src="https://github.com/nurkholiqaganihafid/Kalbe_Nutritionals_Data_Scientist_Project/assets/89395541/b58bc443-c99a-4daf-97c7-8f9b824db90c" width="400">
</p>


### Time Series Regression
- Decomposition Analysis of Product Forecast
<p align="center">
  <img alt="Decomposition Analysis of Product Forecast" title="Decomposition Analysis of Product Forecast" src="https://github.com/nurkholiqaganihafid/Kalbe_Nutritionals_Data_Scientist_Project/assets/89395541/35e6064b-390d-4b4d-b016-d274f6584647" width="750">
</p>
  
- Kalbe Daily Sales Data (Qty) within 1 Year
<p align="center">
  <img alt="Rolling Statistics" title="Rolling Statistics" src="https://github.com/nurkholiqaganihafid/Kalbe_Nutritionals_Data_Scientist_Project/assets/89395541/bfc2d6d3-975d-435e-ba0a-934415fd8846" width="750">
</p>
  
- Model ARIMA Prediction from Quantity Sold
<p align="center">
  <img alt="Forecast Quantity Sold" title="Forecast Quantity Sold" src="https://github.com/nurkholiqaganihafid/Kalbe_Nutritionals_Data_Scientist_Project/assets/89395541/1dd01c81-a0c5-4afe-8734-72ee64fb4d86" width="750">
</p>

- Forecast of Product Quantity Sold in the Next 2 Months
<p align="center">
  <img alt="Forecast of Product Quantity Sold in the Next 2 Months" title="Forecast of Product Quantity Sold in the Next 2 Months" src="https://github.com/nurkholiqaganihafid/Kalbe_Nutritionals_Data_Scientist_Project/assets/89395541/f182efa3-beca-4b43-a72c-b0930ca1452e" width="750">
</p>
  
- Average Daily Sales Amount for Each Product in the Next 2 Months
<p align="center">
  <img alt="Average Daily Sales Amount for Each Product in the Next 2 Months" title="Average Daily Sales Amount for Each Product in the Next 2 Months" src="https://github.com/nurkholiqaganihafid/Kalbe_Nutritionals_Data_Scientist_Project/assets/89395541/8f741e24-1fc4-4368-b886-acbd673bb6d8" width="750">
</p>
  
- 📚Conclusion and Recommendation
  - Conclusion
    - Based on the time series prediction results, the average number of products sold per day is 51.
    - The product with the highest sales is Thai Tea, with an average quantity of 8 per day, followed by Choco Bar and Ginger Candy, with an average quantity of 7 per day.
    - The product with the lowest sales is cashew, with an average of 2 per day.
  - Recommendation
    - Increasing the daily stock of Thai Tea, Choco Bar and Ginger Candy products to meet high customer demand.
    - Additionally, the lowest-selling products, such as Cashew, can be evaluated to determine whether there are opportunities to increase sales with marketing strategies or changes in product packaging or presentation.


### K-Means Clustering
- Data Frame Cluster
```python
df_cluster = df.groupby(['customer_id']).agg({ 'transaction_id': 'count',
                                              'qty': 'sum',
                                               'total_amount': 'sum'
                                               }).reset_index()
```
<p align="center">
  <img alt="Data Frame Cluster" title="Data Frame Cluster" src="https://github.com/nurkholiqaganihafid/Kalbe_Nutritionals_Data_Scientist_Project/assets/89395541/d2402218-7810-4de6-9a9c-f27e8e882566" width="400">
</p>

- Elbow Method
<p align="center">
  <img alt="belum ada" title="" src="https://github.com/nurkholiqaganihafid/Kalbe_Nutritionals_Data_Scientist_Project/assets/89395541/cc14b3dc-cfab-4aeb-9680-844bf87192ce" width="750">
</p>
  - In the plot above, the best cluster is 3


- Customer Clustering based on Quantity and Total Amount
<p align="center">
  <img alt="Customer Clustering" title="Customer Clustering" src="https://github.com/nurkholiqaganihafid/Kalbe_Nutritionals_Data_Scientist_Project/assets/89395541/83a46b78-652f-4c60-8094-c8e4e09cb48f" width="750">
</p>

- Summary of Clusters
<p align="center">
  <img alt="Summary of Clusters" title="Summary of Clusters" src="https://github.com/nurkholiqaganihafid/Kalbe_Nutritionals_Data_Scientist_Project/assets/89395541/043615cf-8be3-4885-984e-b8a3df66eab9" width="750">
</p>
  
- 📚Conclusion and Recommendation
  - Conclusion
    - Based on the clustering prediction results, there are 3 customer segments.
    - Segment 0 has 135 customers with an average of 8 transactions per customer, 27 average items per transaction, and an average total purchase of Rp 229.389.
    - Segment 1 has 202 customers with an average of 11 transactions per customer, 41 average items per transaction, and an average total purchase of Rp 363.267.
    - Segment 2 has 107 customers with an average of 15 transactions per customer, 58 average items per transaction, and an average total purchase of Rp 525.432.
  - Recommendation
    - Segment 0: Customers in this segment have a low transaction frequency, a moderate number of items per transaction, and relatively low total purchases. The recommendation for this segment is to provide special promotions or discounts to encourage customers to make more transactions.
    - Segment 1: Customers in this segment have a moderate frequency of transactions, a high number of items per transaction, and a moderate total purchase. The recommendation for this segment is to provide promotions that focus on increasing the number of items per transaction, such as product bundling or special offers for purchases of a certain amount.
    - Segment 2: Customers in this segment have high transaction frequency, a high number of items per transaction, and high total purchases. The recommendation for this segment is to provide promotions that focus on customer rewards and recognition, such as loyalty programs or special discounts for loyal customers.


<p align="right"><a href="#top">Back to top</a></p>
