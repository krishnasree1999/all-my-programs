create database datefunctions
SELECT GETDATE();
SELECT DAY('2022-01-11');
SELECT year('2022-01-11');
SELECT month('2022-01-11');
SELECT DATEPART(YEAR, '2020/05/01 14:38:52') AS _year, 
	DATEPART(MONTH, '2020/05/01 14:38:52') AS _month, 
	DATEPART(DAY, '2020/05/01 14:38:52') AS _day, 
	DATEPART(HOUR, '2020/05/01 14:38:52') AS _hour, 
	DATEPART(MINUTE, '2020/05/01 14:38:52') AS _minute, 
	DATEPART(SECOND, '2020/05/01 14:38:52') AS _second;

SELECT EOMONTH(GETDATE()), EOMONTH('20210101'), EOMONTH('May 1, 2021');
SELECT EOMONTH(GETDATE()) as 'End Of Current Month',
   EOMONTH(GETDATE(),-1) as 'End Of Last Month',
   EOMONTH(GETDATE(),6) as 'End Of Month +6';

SELECT DATEDIFF(DAY, '2020-05-01', '2020-05-10') AS _date_difference;
SELECT DATEADD(DAY, -10, '2020-05-01') AS _date_add;
SELECT EOMONTH('2020-05-01') AS _eom;

SELECT DATENAME(year, '12:10:30.123')  
    ,DATENAME(month, '12:10:30.123')  
    ,DATENAME(day, '12:10:30.123')  
    ,DATENAME(dayofyear, '12:10:30.123')  
    ,DATENAME(weekday, '12:10:30.123');


DECLARE @datetime2 datetime2 = '2007-01-01 13:10:10.1111111';  
SELECT 'year', DATEADD(year,1,@datetime2) 
UNION ALL 
SELECT 'quarter',DATEADD(quarter,1,@datetime2);

SELECT year(2000-08-13)  
UNION ALL  
SELECT month(2000-08-13)

drop table data

create table data(collegeid int, collegename varchar(20), collegelocation varchar(20))
insert into data values(1,'sridevi','hyd')
insert into data values(2,'vasavi','kol')
insert into data values(3,'MLRIT','bng')
insert into data values(4,'CBIT','chn')
insert into data values(5,'MGIT','mum')

select * from data

drop table data1
create table data1(collegeid int,collegecode int,collegedist varchar(20))
insert into data1 values(5,005,'blg')
insert into data1 values(2,009,'ap')
insert into data1 values(1,006,'tm')
insert into data1 values(4,987,'hyb')
insert into data1 values(9,009,'dmm')

select * from data1

select collegeid from data
union 
select collegeid from data1

select collegeid from data
union all
select collegeid from data1

select collegeid from data
intersect 
select collegeid from data1

select collegeid from data
except
select collegeid from data1