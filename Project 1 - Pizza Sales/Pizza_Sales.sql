select * from pizza_sales

--Total Revenue (Remove the comment line to execute)
--SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales

--Ratio of sum of total price by order id
--SELECT SUM(total_price)/ COUNT(DISTINCT(order_id)) as Avg_Order_Value FROM pizza_sales

--Total no. of quantity
--SELECT SUM(quantity) as Total_Quantity FROM pizza_sales

--Total no. of orders placed
--SELECT COUNT(DISTINCT(order_id)) as Total_Order from pizza_sales

--Average Pizzas Per Order
--select cast(sum(quantity) as decimal(10, 2))/
--cast(count(distinct(order_id)) as decimal(10, 2)) as Avg_Pizza_Order from pizza_sales

--CHART REQUIREMENTS
--Daily Trends of Orders
--select DATENAME(DW, order_date) as order_day, count(distinct order_id) as total_orders
--from pizza_sales
--group by DATENAME(DW, order_date)

--Monthly Trends of Orders
--select DATENAME(MONTH, order_date) as month_name, count(distinct order_id) as total_orders
--from pizza_sales
--group by DATENAME(MONTH, order_date)
--order by total_orders desc

--Percentage of Sales by Pizza Category
--select pizza_category, sum(total_price) * 100 / (select sum(total_price) from pizza_sales where MONTH(order_date) = 1) as total_sales_pct 
--from pizza_sales
--where MONTH(order_date) = 1
--group by pizza_category

--Percentage of Sales by Pizza Size
--select pizza_size, cast(sum(total_price) * 100 / (select sum(total_price) from pizza_sales where datepart(quarter, order_date) = 1) as decimal(10,2)) as total_sales_pct 
--from pizza_sales
--where datepart(quarter, order_date) = 1
--group by pizza_size
--order by total_sales_pct desc

--Top 5 Sellers and Bottom 5 Sellers by Total Revenue
--select TOP 5 pizza_name, sum(total_price) as total_revenue from pizza_sales
--group by pizza_name
--order by total_revenue desc

--select TOP 5 pizza_name, sum(total_price) as total_revenue from pizza_sales
--group by pizza_name
--order by total_revenue

--Top 5 Sellers and Bottom 5 Sellers by Total Quantity
--select TOP 5 pizza_name, sum(quantity) as total_quantity from pizza_sales
--group by pizza_name
--order by total_quantity desc

--select TOP 5 pizza_name, sum(quantity) as total_quantity from pizza_sales
--group by pizza_name
--order by total_quantity