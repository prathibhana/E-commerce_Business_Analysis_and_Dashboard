SELECT 
Date
,Traffic_Source
,Campaign
,Customer_Type
,Visitors
,COALESCE(Marketing_Spend, (SELECT AVG(Marketing_Spend) FROM `e-commerce-449804.raw_data.e_commerce_raw`)) AS Marketing_Spend
,Add_to_Cart
,ROUND(COALESCE(Purchases, (SELECT AVG(Purchases) FROM `e-commerce-449804.raw_data.e_commerce_raw`))) AS Purchases
,COALESCE(Revenue, (SELECT AVG(Revenue) FROM `e-commerce-449804.raw_data.e_commerce_raw`)) AS Revenue
,Cart_Abandonment_Rate
,Repeat_Purchase_Rate
,Conversion_Rate
FROM `e-commerce-449804.raw_data.e_commerce_raw`
