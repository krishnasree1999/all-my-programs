create database stringfunctions
select ascii('t') as itsascii;
select len('Hello!') as itslength;
select upper('tara');
select lower('TARA');
select replace('tara' ,'t','i');
select ltrim('   helloworld');
select rtrim('hi!tara  ');
select reverse('tara');
select concat('happy','birthday');
select difference('tara','tara');
select LEFT('maya',2);
select right('tara',2);
select replicate('tara',2);
select stuff('abcdef',2,3,'ijklm');
select substring('tara',3,2);
select str(22.32,5,1);
select quotename('abc[]def');