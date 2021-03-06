create database basicclass

drop table salesman

create table salesman(salesman_id  int,name varchar(100),city varchar(100),commission decimal(5,2))
insert into salesman values(5001,'James Hoog','New York',0.15)
insert into salesman values(5002,'Nail Knite','Paris',0.13)
insert into salesman values(5005,'Pit Alex','London',0.11)
insert into salesman values(5006,'Mc Lyon','Paris',0.14)
insert into salesman values(5007,'Paul Adam','Rome',0.13)
insert into salesman values(5003,'Lauson Hen','San Jose',0.12)

select * from salesman

SELECT name,commission
FROM salesman;

SELECT name,city
FROM salesman
WHERE city='Paris';

SELECT COUNT(*) 
FROM salesman 
WHERE city IS NOT NULL;


drop table ord
create table ord(ord_no int,purch_amt decimal(8,2),ord_date date,customer_id int,salesman_id int)
insert into ord values(70001,150.5,'2012-10-05',3005,5002)
insert into ord values(70009,270.65,'2012-09-10',3001,5005)
insert into ord values(70002,65.26,'2012-10-05',3002,5001)
insert into ord values(70004,110.5,'2012-08-17',3009,5003)
insert into ord values(70007,948.5,'2012-09-10',3005,5002)
insert into ord values(70005,2400.6,'2012-07-27',3007,5001)
insert into ord values(70008,5760,'2012-09-10',3002,5001)
insert into ord values(70010,1983.43,'2012-10-10',3004,5006)
insert into ord values(70003,2480.4,'2012-10-10',3009,5003)
insert into ord values(70012,250.45,'2012-06-27',3008,5002)
insert into ord values(70011,75.29,'2012-08-17',3003,5007)
insert into ord values(70013,3045.6,'2012-04-25',3002,5001)

select * from ord

SELECT ord_date, salesman_id, ord_no, purch_amt
FROM ord;

SELECT ord_no, ord_date, purch_amt
FROM ord
WHERE salesman_id=5001;

SELECT AVG (purch_amt) 
FROM ord;

SELECT COUNT (DISTINCT salesman_id) 
FROM ord;

SELECT MAX (purch_amt) 
FROM ord;

SELECT customer_id,ord_date,MAX(purch_amt) 
FROM ord 
GROUP BY customer_id,ord_date;

SELECT ord_date,salesman_id,COUNT(*) 
FROM ord 
GROUP BY ord_date,salesman_id;

SELECT COUNT(*) 
FROM ord
WHERE ord_date='2012-08-17';

SELECT salesman_id,MAX(purch_amt) 
FROM ord
GROUP BY salesman_id 
HAVING salesman_id BETWEEN 5003 AND 5008;


drop table customer
create table customer(customer_id int,cust_name varchar(30),city varchar(15),grade numeric(3),salesman_id int)
insert into customer values(3002,'Nick Rimando','New York',100,5001)
insert into customer values(3007,'Brad Davis','New York',200,5001)
insert into customer values(3005,'Graham Zusi','California',200,5002)
insert into customer values(3008,'Julian Green','London',300,5002)
insert into customer values(3004, 'Fabian Johnson ','Paris',300,5006)
insert into customer values(3009,'Geoff Cameron','Berlin',100,5003)
insert into customer values(3003,'Jozy Altidor','Moscow',200,5007)
insert into customer values(3001,'Brad Guzan','London',100,5005)

select * from customer

SELECT *FROM customer
WHERE grade=200;

SELECT COUNT(*) 
FROM customer;

SELECT city,MAX(grade) 
FROM customer 
GROUP BY city;

