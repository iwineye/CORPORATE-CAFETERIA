#FINAL BILL OF EACH Employee 

select c.employee_name, SUM(order_cost) AS FINAL_BILL
from orders o
left join customers c on o.employee_id=c.employee_id 
group by c.employee_name;


#average profit margin
SELECT
o.order_id,
o.item_price,
o.quantity,
i.item_id,
i.item_name,
o.order_date

FROM
 orders o
LEFT JOIN item_list i ON o.item_id=i.item_id;

#MONTHLY SALES 

select Month(order_date) Calender_month ,Sum(final_bill) AS Monthly_revenue
FROM bakery.orders
where Month(order_date) in (6,7,8)
Group By Month(Order_date);

#MONTHLY ORDERS

select Month(order_date),count(order_id) AS Monthly_orders
FROM bakery.orders
where Month(order_date) in (6,7,8)
Group By Month(Order_date);


#AVERAGE MONTHLY ORDER COST
select Month(order_date),AVG(final_bill) as Avg_order_cost
FROM bakery.orders
where Month(order_date) in (6,7,8)
Group By Month(Order_date);

#TOTAL REVENUE PER PRODUCT EACH MONTH
select Month(order_date) AS calender_month,item_id,SUM(final_bill) as item_revenue
FROM orders o
where Month(order_date) in (6,7,8)
Group By Month(order_date),item_id
ORDER BY Month(calender_month) Desc;




#AVERGE REVENUE PER PRODUCT EACH MONTH
select Month(order_date),item_id,AVG(final_bill) as Avg_item_revenue
FROM orders o
where Month(order_date) in (6,7,8)
Group By Month(order_date),item_id
ORDER BY Month(Avg_item_revenue) Desc;

#MONTHLY customers 
select count(DISTINCT(order_id)) AS Total_orders,count(DISTINCT(employee_id)) As total_customers,Month(order_date) As calender_month
FROM bakery.orders
where Month(order_date) in (6,7,8)
Group By Month(Order_date)


