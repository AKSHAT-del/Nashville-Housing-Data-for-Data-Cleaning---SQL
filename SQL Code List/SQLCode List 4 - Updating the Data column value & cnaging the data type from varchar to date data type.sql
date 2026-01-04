select * from nhd.nhd_tb;


select pg_typeof(saledate) from nhd.nhd_tb limit 1;

Alter table nhd.nhd_tb
Alter column saledate type date;


select to_char(saledate,'yyyy-mm-dd') from nhd.nhd_tb;

select * from sales;


select to_date('April 9, 2013','month dd, yyyy');

select * from nhd.nhd_tb;

select to_date(saledate,'mondth dd, yyyy') from nhd.nhd_tb;


select saledate, cast(saledate as Date) as saledate_1 from nhd.nhd_tb;


Update nhd.nhd_tb
set saledate = cast(saledate as Date);

select * from nhd.nhd_tb;


Alter table nhd.nhd_tb
add column saledate_1 date;


select * from nhd.nhd_tb;


Update nhd.nhd_tb
set saledate_1 = cast(saledate as Date);

select * from nhd.nhd_tb;

Alter table nhd.nhd_tb
Drop Column saledate;


Alter table nhd.nhd_tb
rename column saledate_1 to saledate;


select * from nhd.nhd_tb order by uniqueid;


select * from nhd.nhd_tb;


