#FINAL BILL OF EACH Employee 

select c.employee_name, SUM(order_cost) AS FINAL_BILL
from orders o
left join customers c on o.employee_id=c.employee_id 
group by c.employee_name;





#joining orders table to item table  

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


#quantity of orders of each item 

SELECT
o.item_id,
i.item_name,
sum(o.quantity) as order_quantity
from orders o
left join item_list i on o.item_id=i.item_id
group by o.item_id,i.item_name;


#calculating the cost of each order as final bill

select
s1.order_id,
s1.employee_id,
s1.employee_name,
s1.order_cost,
s1.order_date,
s1.gender,
s1.item_id,


(order_cost*0.14)+order_cost as final_bill
from (
SELECT
o.order_id,
o.item_id,
i.item_name,
o.employee_id,
o.order_date,
c.employee_name,
c.gender,
o.item_price,
o.quantity,
sum(o.quantity) as order_quantity,
o.item_price*o.quantity as order_cost



from orders o
left join item_list i on o.item_id=i.item_id
left join customers c on o.employee_id=c.employee_id 


group by 
o.order_id,
o.item_id,
i.item_name,
employee_id,
order_date,
c.employee_name,
c.gender,
o.item_price,
o.quantity) s1;


#adding employee details to orders
SELECT
o.order_id,
o.item_id,
i.item_name,
o.employee_id,
o.order_date,
c.employee_name,
c.gender,
o.item_price,
o.quantity,
#sum(o.quantity) as order_quantity,
o.item_price*o.quantity as order_cost



from orders o
left join item_list i on o.item_id=i.item_id
left join customers c on o.employee_id=c.employee_id 


group by 
o.order_id,
o.item_id,
i.item_name,
employee_id,
order_date,
c.employee_name,
c.gender,
o.item_price,
o.quantity