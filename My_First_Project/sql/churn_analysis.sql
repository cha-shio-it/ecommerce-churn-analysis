select count(*) from ecommerce_users where Churned is null;
-- 提取核心字段
select Churned,
Membership_Years,
Signup_Quarter,
Login_Frequency,
Session_Duration_Avg,
Total_Purchases,
Days_Since_Last_purchase,
Average_Order_Value,
Cart_Abandonment_Rate,
Customer_Service_calls,
Returns_Rate,
Discount_Usage_Rate,
Product_Reviews_Written
from ecommerce_users;