select * from nhd.nhd_tb;

select soldasvacant from nhd.nhd_tb;

select distinct(soldasvacant) from nhd.nhd_tb;

select distinct(soldasvacant),count(soldasvacant) 
from nhd.nhd_tb group by soldasvacant order by soldasvacant;

select distinct(soldasvacant),count(soldasvacant) 
from nhd.nhd_tb group by soldasvacant order by 2;


---> Now since the values of yes & no is quite large compare to 'y' & 'n' the value containg'y' & 'n' sholud be updatd by 'yes' & 'no'

update nhd.nhd_tb
set soldasvacant = 'Yes' where soldasvacant = 'Y';

update nhd.nhd_tb
set soldasvacant = 'No' where soldasvacant = 'N';

select * from nhd.nhd_tb;

select distinct(soldasvacant), count(soldasvacant) from nhd.nhd_tb
group by soldasvacant;

select distinct(soldasvacant),count(soldasvacant) 
from nhd.nhd_tb group by soldasvacant order by soldasvacant;
