select * from nhd.nhd_tb;


select parcelid,max(propertyaddress )from nhd.nhd_tb
group by parcelid;


select * from nhd.nhd_tb
left join(select parcelid,max(propertyaddress) as rpa from nhd.nhd_tb group by parcelid) as ab
on nhd.nhd_tb.parcelid = ab.parcelid;



select nhd.nhd_tb.parcelid,nhd.nhd_tb.propertyaddress,ab.rpa,ab.parcelid from nhd.nhd_tb
left join(select parcelid,max(propertyaddress) as rpa from nhd.nhd_tb group by parcelid) as ab
on nhd.nhd_tb.parcelid = ab.parcelid where nhd.nhd_tb.propertyaddress isnull;



select *,coalesce(nhd.nhd_tb.propertyaddress,ab.rpa) as sample
from nhd.nhd_tb
left join(select parcelid,max(propertyaddress) as rpa from nhd.nhd_tb group by parcelid) as ab
on nhd.nhd_tb.parcelid = ab.parcelid where nhd.nhd_tb.propertyaddress isnull;



select nhd.nhd_tb.propertyaddress,coalesce(nhd.nhd_tb.propertyaddress,ab.rpa) as sample
from nhd.nhd_tb
left join(select parcelid,max(propertyaddress) as rpa from nhd.nhd_tb group by parcelid) as ab
on nhd.nhd_tb.parcelid = ab.parcelid where nhd.nhd_tb.propertyaddress isnull;


select nhd.nhd_tb.parcelid,nhd.nhd_tb.propertyaddress,ab.parcelid,coalesce(nhd.nhd_tb.propertyaddress,ab.rpa) as sample
from nhd.nhd_tb
left join(select parcelid,max(propertyaddress) as rpa from nhd.nhd_tb group by parcelid) as ab
on nhd.nhd_tb.parcelid = ab.parcelid order by nhd.nhd_tb.parcelid;




Alter table nhd.nhd_tb
add column sample_add varchar(200);

select * from nhd.nhd_tb;




select coalesce(nhd.nhd_tb.propertyaddress,ab.rpa) as sample
from nhd.nhd_tb
left join(select parcelid,max(propertyaddress) as rpa from nhd.nhd_tb group by parcelid) as ab
on nhd.nhd_tb.parcelid = ab.parcelid order by nhd.nhd_tb.parcelid;



with cte as (
select ab.parcelid,coalesce(nhd.nhd_tb.propertyaddress,ab.rpa) as sample
from nhd.nhd_tb
left join(select parcelid,max(propertyaddress) as rpa from nhd.nhd_tb group by parcelid) as ab
on nhd.nhd_tb.parcelid = ab.parcelid order by nhd.nhd_tb.parcelid)
update nhd.nhd_tb
set sample_add = cte.sample from cte
where nhd.nhd_tb.parcelid = cte.parcelid;


select parcelid,propertyaddress from nhd.nhd_tb group by parcelid,propertyaddress order by parcelid;

select parcelid,sample_add from nhd.nhd_tb group by parcelid,sample_add order by parcelid;



select * from nhd.nhd_tb;

select parcelid,propertyaddress,sample_add from nhd.nhd_tb;

select parcelid,propertyaddress,sample_add from nhd.nhd_tb where propertyaddress isnull;


Alter table nhd.nhd_tb
Drop column propertyaddress;

select * from nhd.nhd_tb;

Alter table nhd.nhd_tb
rename sample_add to propertyaddress;

select * from nhd.nhd_tb;




