-- ===============================================Table No. : 1==============================================================
-- Crete Table Query
Create Table company_mast(
	COM_ID  Int Primary Key,
	COM_NAME Varchar(50) Not Null
)

--Insert Record 
Insert Into company_mast(COM_ID,COM_NAME)
	Values(11,'Samsung')

Insert Into company_mast(COM_ID,COM_NAME)
	Values(12,'iBall')

Insert Into company_mast(COM_ID,COM_NAME)
	Values(13,'Epsion')

Insert Into company_mast(COM_ID,COM_NAME)
	Values(14,'Zebronics')

Insert Into company_mast(COM_ID,COM_NAME)
	Values(15,'Asus')

Insert Into company_mast(COM_ID,COM_NAME)
	Values(16,'Frontech')

-- ===================================================Table No. : 2======================================================================
-- Table No. 4 item_mast
Create Table item_mast(
	PRO_ID Int Primary Key,
	PRO_NAME Varchar(250) Not Null,
	PRO_PRICE Int Not Null,
	PRO_COM Int FOREIGN KEY REFERENCES company_mast(COM_ID)
)

Insert Into item_mast(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM)
	Values(101,'Mother Board',3200,15)

Insert Into item_mast(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM)
	Values(102,'Key Board',450,16)

Insert Into item_mast(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM)
	Values(103,'ZIP drive',250,14)

Insert Into item_mast(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM)
	Values(104,'Speaker',550,16)

Insert Into item_mast(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM)
	Values(105,'Monitor',5000,11)

Insert Into item_mast(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM)
	Values(106,'DVD drive',900,12)

Insert Into item_mast(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM)
	Values(107,'CD drive',800,12)

Insert Into item_mast(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM)
	Values(108,'Printer',2600,13)

Insert Into item_mast(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM)
	Values(109,'Refill cartridge',350,13)

Insert Into item_mast(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM)
	Values(110,'Mouse',250,12)

-- ===================================================Table No. : 3======================================================================
-- Create Second Table
Create Table emp_department(
	DPT_CODE Int Primary key,
	DPT_NAME Varchar(50) Not Null,
	DPT_ALLOTMENT Int Not Null
)

--Insert Values
Insert Into emp_department(DPT_CODE,DPT_NAME,DPT_ALLOTMENT)
	Values(57,'IT',65000)

Insert Into emp_department(DPT_CODE,DPT_NAME,DPT_ALLOTMENT)
	Values(63,'Finance',15000)

Insert Into emp_department(DPT_CODE,DPT_NAME,DPT_ALLOTMENT)
	Values(47,'HR',240000)

Insert Into emp_department(DPT_CODE,DPT_NAME,DPT_ALLOTMENT)
	Values(27,'RD',55000)

Insert Into emp_department(DPT_CODE,DPT_NAME,DPT_ALLOTMENT)
	Values(89,'QC',75000)

-- ===================================================Table No. : 4======================================================================
-- Create Table Query
Create Table emp_details(
	EMP_IDNO Int Primary Key ,
	EMP_FNAME Varchar(50) Not Null,
	EMP_LNAME Varchar(50) Not Null,
	EMP_DEPT Int FOREIGN KEY REFERENCES emp_department(DPT_CODE)
)

--Insert The Record Into Table
Insert Into emp_details(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT)
	Values(127323,'Michale','Robbin',57)

Insert Into emp_details(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT)
	Values(526689,'Carlos','Snares',63)

Insert Into emp_details(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT)
	Values(843795,'Enric','Dosio',57)

Insert Into emp_details(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT)
	Values(328717,'Jhon','Snares',63)

Insert Into emp_details(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT)
	Values(444527,'Joseph','Dosni',47)

Insert Into emp_details(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT)
	Values(659831,'Zanifer','Emily',47)

Insert Into emp_details(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT)
	Values(847674,'Kuleswar','Sitaraman',57)

Insert Into emp_details(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT)
	Values(748681,'Henrey','Gabriel',47)

Insert Into emp_details(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT)
	Values(555935,'Alex','Manuel',57)

Insert Into emp_details(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT)
	Values(539569,'George','Mardy',27)

Insert Into emp_details(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT)
	Values(733843,'Mario','Saule',63)

Insert Into emp_details(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT)
	Values(631548,'Alan','Snappy',27)

Insert Into emp_details(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT)
	Values(839139,'Maria','Foster',57)


-- ===================================================Table No. : 5======================================================================
-- Create Table
Create Table salesman(
	salesman_id Int Primary Key,
	name Varchar(100) Not Null,
	city Varchar(50) Not Null,
	commission Decimal(3,2) Not Null
)

-- Insert Records
Insert Into salesman(salesman_id,name,city,commission)
	Values(5001,'James Hoog','New York',0.15)

Insert Into salesman(salesman_id,name,city,commission)
	Values(5002,'Nail Knite','Paris',0.13)

Insert Into salesman(salesman_id,name,city,commission)
	Values(5005,'Pit Alex','London',0.11)

Insert Into salesman(salesman_id,name,city,commission)
	Values(5006,'Mc Lyon','Paris',0.14)

Insert Into salesman(salesman_id,name,city,commission)
	Values(5007,'Paul Adam','Rome',0.13)

Insert Into salesman(salesman_id,name,city,commission)
	Values(5003,'Lauson Hen','San Jose',0.12)

-- ===================================================Table No. : 6======================================================================
-- Create Table
Create Table customer(
	customer_id Int Primary Key,
	cust_name Varchar(100) Not Null,
	city Varchar(50) Not Null,
	grade Int,
	salesman_id Int FOREIGN KEY REFERENCES salesman(salesman_id)
)

-- Insert Records
Insert Into customer(customer_id,cust_name,city,grade,salesman_id)
	Values(3002,'Nick Rimando','New York',100,5001)

Insert Into customer(customer_id,cust_name,city,grade,salesman_id)
	Values(3007,'Brad Davis','New York',200,5001)

Insert Into customer(customer_id,cust_name,city,grade,salesman_id)
	Values(3005,'Graham Zusi','California',200,5002)

Insert Into customer(customer_id,cust_name,city,grade,salesman_id)
	Values(3008,'Julian Green','London',300,5002)

Insert Into customer(customer_id,cust_name,city,grade,salesman_id)
	Values(3004,'Fabian Johnson','Paris',300,5006)

Insert Into customer(customer_id,cust_name,city,grade,salesman_id)
	Values(3009,'Geoff Cameron','Berlin',100,5003)

Insert Into customer(customer_id,cust_name,city,grade,salesman_id)
	Values(3003,'Jozy Altidor','Moscow',200,5007)

Insert Into customer(customer_id,cust_name,city,grade,salesman_id)
	Values(3001,'Brad Guzan','London',Null,5005)
-- ===================================================Table No. : 7======================================================================
Create Table orders(
	ord_no Int Primary Key,
	purch_amt Decimal(7,2),
	ord_date Date Not Null,
	customer_id Int FOREIGN KEY REFERENCES customer(customer_id),
	salesman_id Int FOREIGN KEY REFERENCES salesman(salesman_id)
)

Insert Into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id)
	Values(70001,150.5,'2012-10-05',3005,5002)

Insert Into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id)
	Values(70009,270.65,'2012-09-10',3001,5005)

Insert Into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id)
	Values(70002,65.26,'2012-10-05',3002,5001)

Insert Into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id)
	Values(70004,110.5,'2012-08-17',3009,5003)

Insert Into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id)
	Values(70007,948.5,'2012-09-10',3005,5002)

Insert Into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id)
	Values(70005,2400.6,'2012-07-27',3007,5001)

Insert Into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id)
	Values(70008,5760,'2012-09-10',3002,5001)

Insert Into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id)
	Values(70010,1983.43,'2012-10-10',3004,5006)

Insert Into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id)
	Values(70003,2480.4,'2012-10-10',3009,5003)

Insert Into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id)
	Values(70012,250.45,'2012-06-27',3008,5002)

Insert Into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id)
	Values(70011,75.29,'2012-08-17',3003,5007)

Insert Into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id)
	Values(70013,3045.6,'2012-04-25',3002,5001)


-- =======================================================Assignment========================================================================
-- (1) Write a SQL statement to find the total purchase amount of all orders.
Select sum(purch_amt) As 'total purchase amount' 
From orders

-- (2) Write a SQL statement to find the average purchase amount of all orders.
Select avg(purch_amt) As 'average purchase amount' 
From orders

-- (3) Write a SQL statement to find the number of salesmen currently listing for all of their customers
Select Count(Distinct salesman_id) As 'the number of salesmen currently listing' 
From orders

-- (4) Write a SQL statement to know how many customer have listed their names.
Select Count(*) As 'How Many Customer' 
From customer

-- (5) Write a SQL statement find the number of customers who gets at least a gradation for his/her performance
Select Count(*) As 'number of customers who gets at least a gradation for his/her performance' 
From customer
Where grade Is Not Null

-- (6) Write a SQL statement to get the maximum purchase amount of all the orders
Select max(purch_amt) As 'maximum purchase amount' 
From orders

-- (7) Write a SQL statement to get the minimum purchase amount of all the orders
Select min(purch_amt) As 'maximum purchase amount' 
From orders

-- (8) Write a SQL statement which selects the highest grade for each of the cities of the customers.
Select city,max(grade) As 'highest grade for each of the cities'
From customer
Group By city
Order By city

-- (9) Write a SQL statement to find the highest purchase amount ordered by the each customer 
-- with their ID and highest purchase amount.
Select customer_id,max(purch_amt) As 'highest purchase amount'
From orders
Group By customer_id

-- (10) Write a SQL statement to find the highest purchase amount ordered by the each customer on a particular date 
-- with their ID, order date and highest purchase amount. 
Select customer_id,ord_date As 'Order Date',max(purch_amt) As 'highest purchase amount'
From orders
Group By customer_id,ord_date

-- (11) Write a SQL statement to find the highest purchase amount on a date '2012-08-17' for each salesman with their ID.
Select salesman_id,max(purch_amt) As 'highest purchase amount'
From orders 
Where ord_date = '2012-08-17'
Group By salesman_id

-- (12) Write a SQL statement to find the highest purchase amount with their ID and order date, for only those customers 
-- who have highest purchase amount in a day is more than 2000.
Select customer_id,ord_date,max(purch_amt) As 'highest purchase amount'
From orders
Where purch_amt > 2000
Group By customer_id,ord_date

-- (13) Write a SQL statement to find the highest purchase amount with their ID and order date, for those customers
-- who have a higher purchase amount in a day is within the range 2000 and 6000
Select customer_id,ord_date,max(purch_amt) As 'highest purchase amount'
From orders
Where purch_amt Between 2000 and 6000
Group By customer_id,ord_date

-- (14) Write a SQL statement to find the highest purchase amount with their ID and order date, for only those customers
-- who have a higher purchase amount in a day is within the list 2000, 3000, 5760 and 6000.
Select customer_id,ord_date,max(purch_amt) As 'highest purchase amount'
From orders
Where purch_amt In(2000,3000,5760,6000)
Group By customer_id,ord_date  

-- (15) Write a SQL statement to find the highest purchase amount with their ID, for only those customers whose ID 
-- is within the range 3002 and 3007.
Select customer_id,max(purch_amt) As 'highest purchase amount'
From orders
Where customer_id Between 3002 and 3007
Group By customer_id

-- (16) Write a SQL statement to display customer details (ID and purchase amount) whose IDs are within the range
-- 3002 and 3007 and highest purchase amount is more than 1000.  
Select customer_id,purch_amt As 'purchase amoun'
From orders
Where purch_amt > 1000 And customer_id Between 3002 and 3007
Group By customer_id,purch_amt

-- (17) Write a SQL statement to find the highest purchase amount with their ID, for only those 
-- salesmen whose ID is within the range 5003 and 5008.
Select salesman_id,max(purch_amt) As 'highest purchase amount'
From orders
Where salesman_id Between 5003 and 5008
Group By salesman_id

-- (18) Write a SQL statement that counts all orders for a date August 17th, 2012.
Select count(*) As 'Total Orders'
From orders
Where ord_date = '2012-08-17'

-- (19) Write a SQL statement that count the number of salesmen for whom a city is specified. 
-- Note that there may be spaces or no spaces in the city column if no city is specified.
Select count(*) As 'number of salesmen for whom a city is specified' 
From salesman
Where city Is Not Null

-- (20) Write a query that counts the number of salesmen with their order date and ID registering 
-- orders for each day.
Select salesman_id,ord_date As 'Order Date',count(*) As 'salesmen with orders for each day'
From orders
Group By salesman_id,ord_date

-- (21) Write a SQL query to calculate the average price of all the products. 
Select avg(PRO_PRICE) As 'average price' 
From item_mast

-- (22) Write a SQL query to find the number of products with a price more than or equal to Rs.350.
Select count(*) As 'number of products'
From item_mast
Where PRO_PRICE >= 350

-- (23) Write a SQL query to display the average price of each company's products, along with their code.
Select avg(PRO_PRICE) As 'average price By Company Products',PRO_COM
From item_mast
Group By PRO_COM

-- (24) Write a query in SQL to find the sum of the allotment amount of all departments. 
Select sum(DPT_ALLOTMENT)
From emp_department

-- (25) Write a query in SQL to find the number of employees in each department along with the department code.
Select EMP_DEPT,count(*) As 'number of employees'
From emp_details
Group By EMP_DEPT





-- ===================================================Extra Query For Select Table======================================================================
Select * From company_mast
Select * From item_mast
Select * From emp_department
Select * From emp_details
Select * From salesman
Select * From customer
Select * From orders
-- ===================================================Extra Query For Delete Table======================================================================
Drop Table orders
Drop Table customer
Drop Table salesman
Drop Table emp_details
Drop Table emp_department
Drop Table item_mast
Drop Table company_mast