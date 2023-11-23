import mysql.connector
import pandas as pd

db= mysql.connector.connect(user='root', password='',
                                    host='127.0.0.1',
                                    database='bakery')
mycursor=db.cursor()

###

query ="""select count(DISTINCT(order_id)) AS Total_orders,
                  count(DISTINCT(employee_id)) As total_customers,
                  Month(order_date) As calender_month 
                  FROM bakery.orders
                  where Month(order_date) in (6,7,8)
                  Group By Month(Order_date)"""

mycursor.execute(query)

result=[]

for i,data in enumerate(mycursor):
    #print("Month",data[2])
    #print("Total orders",data[0])
    #print("Total Customers",data[1])
    result.append(data)




query2="""select Month(order_date),item_id,AVG(final_bill) as Avg_item_revenue
         FROM orders o
         where Month(order_date) in (6,7,8)
         Group By Month(order_date),item_id
         ORDER BY Month(Avg_item_revenue) Desc"""

mycursor.execute(query2)

for i,data in enumerate(mycursor):
    result.append(data)

query3="""select Month(order_date) Calender_month ,Sum(final_bill) AS Monthly_revenue
            FROM bakery.orders
            where Month(order_date) in (6,7,8)
            Group By Month(Order_date)"""

mycursor.execute(query3)

for i,data in enumerate(mycursor):
    result.append(data)


mycursor.close() 
db.close()   
print(result)   

df_summery=pd.DataFrame(result)
df_summery
