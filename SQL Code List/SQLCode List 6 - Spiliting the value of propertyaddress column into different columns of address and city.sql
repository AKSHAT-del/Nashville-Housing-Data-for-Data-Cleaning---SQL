select * from nhd.nhd_tb;


select strpos('propertyaddress_sample','_'); -- 16


select substring('propertyaddress_sample',1,10);


select * from nhd.nhd_tb;

select propertyaddress from nhd.nhd_tb;

---- strpos in 'postgress' = charindex in 'ms sql'

select propertyaddress,substring(propertyaddress,1,strpos(propertyaddress,',')) as sample from nhd.nhd_tb;

select propertyaddress,substring(propertyaddress,1,strpos(propertyaddress,',')- 1) as sample from nhd.nhd_tb;

select propertyaddress,substring(propertyaddress,1,strpos(propertyaddress,',')- 1) as address from nhd.nhd_tb;

select propertyaddress,substring(propertyaddress,1,strpos(propertyaddress,',')- 1) as address,
substring(propertyaddress,strpos(propertyaddress,',')) as sample_2 from nhd.nhd_tb;


select propertyaddress,substring(propertyaddress,1,strpos(propertyaddress,',')- 1) as address,
substring(propertyaddress,strpos(propertyaddress,',')+1) as sample_2 from nhd.nhd_tb;


select propertyaddress,substring(propertyaddress,1,strpos(propertyaddress,',')- 1) as address,
substring(propertyaddress,strpos(propertyaddress,',')+1) as city from nhd.nhd_tb;


select *,substring(propertyaddress,1,strpos(propertyaddress,',')- 1) as address,
substring(propertyaddress,strpos(propertyaddress,',')+1) as city from nhd.nhd_tb;



select propertyaddress,substring(propertyaddress,1,strpos(propertyaddress,',')- 1) as address,
substring(propertyaddress,strpos(propertyaddress,',')+1) as city from nhd.nhd_tb;

select propertyaddress,substring(propertyaddress,1,strpos(propertyaddress,',')- 1) as address,
substring(propertyaddress,strpos(propertyaddress,',')+1,length(propertyaddress)) as city from nhd.nhd_tb;

select * from nhd.nhd_tb;

select *,substring(propertyaddress,1,strpos(propertyaddress,',')- 1) as address,
substring(propertyaddress,strpos(propertyaddress,',')+1,length(propertyaddress)) as city from nhd.nhd_tb;

-- Now adding the colum in the table for addresss & city


Alter table nhd.nhd_tb
Add column address varchar(200),
Add column city varchar(200);

select * from nhd.nhd_tb;


--- Now updating the values for the newly added column 

update nhd.nhd_tb
set address = substring(propertyaddress,1,strpos(propertyaddress,',')- 1), 
city = substring(propertyaddress,strpos(propertyaddress,',')+1,length(propertyaddress));

select * from nhd.nhd_tb;

select propertyaddress,address,city from nhd.nhd_tb;


select * from nhd.nhd_tb;
