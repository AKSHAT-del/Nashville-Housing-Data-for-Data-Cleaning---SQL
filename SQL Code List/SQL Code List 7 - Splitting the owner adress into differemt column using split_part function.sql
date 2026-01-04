select * from nhd.nhd_tb;

select parcelid,max(ownername),max(propertyaddress) from nhd.nhd_tb 
group by parcelid order by parcelid;

select propertyaddress , max(ownername) from nhd.nhd_tb
group by propertyaddress order by propertyaddress;


select count(*) from nhd.nhd_tb where ownername isnull; --- 31216

select count(*) from nhd.nhd_tb; --- 56477

select distinct(propertyaddress),ownername,owneraddress from nhd.nhd_tb;

select * from nhd.nhd_tb;

select owneraddress,strpos(owneraddress,',') from nhd.nhd_tb;

select propertyaddress,
left(owneraddress,strpos(owneraddress,',')) as sample 
from nhd.nhd_tb;

select propertyaddress,
left(owneraddress,strpos(owneraddress,',')) as sample,
right(owneraddress,strpos(owneraddress,',')) as sample_2
from nhd.nhd_tb;

select propertyaddress,
left(owneraddress,strpos(owneraddress,',')) as sample,
right(owneraddress,strpos(owneraddress,',')) as sample_2,
right(right(owneraddress,strpos(owneraddress,',')),strpos(owneraddress,',')) as sample_3
from nhd.nhd_tb;


select * from nhd.nhd_tb;

Alter table nhd.nhd_tb
add column sample varchar(200),
add column sample_2 varchar(200),
add column sample_3 varchar(200);


Alter table nhd.nhd_tb
drop column sample,
drop column sample_2,
drop column sample_3;

select * from nhd.nhd_tb;

select propertyaddress from nhd.nhd_tb;

select propertyaddress, split_part(propertyaddress,',',1),split_part(propertyaddress,',',2)
from nhd.nhd_tb;

select owneraddress from nhd.nhd_tb;

select owneraddress,split_part(owneraddress,',',1) 
,split_part(owneraddress,',',2),
split_part(owneraddress,',',3)
from nhd.nhd_tb;


Alter table nhd.nhd_tb
Add column ownersplitaddress varchar(200),
Add column ownersplitcity varchar(200),
Add column ownersplitstate varchar(200);

select * from nhd.nhd_tb;

Update nhd.nhd_tb
set ownersplitaddress= split_part(owneraddress,',',1),
ownersplitcity= split_part(owneraddress,',',2),
ownersplitstate= split_part(owneraddress,',',3);

select * from nhd.nhd_tb;

select ownername,ownersplitaddress,ownersplitcity,ownersplitstate from nhd.nhd_tb;

select distinct(ownersplitstate) from nhd.nhd_tb;

select * from nhd.nhd_tb;