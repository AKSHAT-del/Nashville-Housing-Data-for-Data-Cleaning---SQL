select * from nhd.nhd_tb;


---- Remove Trash value from  PropertyAddress column.

select distinct(PropertyAddress) from nhd.nhd_tb order by PropertyAddress;
--4509

select distinct(PropertyAddress) from nhd.nhd_tb where PropertyAddress like 'add%';
--presence of trash value

select * from nhd.nhd_tb where propertyaddress like 'add%';


select count(*) from nhd.nhd_tb where propertyaddress like 'add%';
-- 29

--- Update the trash value with an 'null' value.
Update nhd.nhd_tb
set PropertyAddress = null
where PropertyAddress like 'add%';

select * from nhd.nhd_tb where propertyaddress is null;
--29

select * from nhd.nhd_tb;

--------------------------------------------------------------------------------xxxxxxxx---------------------------------------------------------------


---- Remove Trash value from OwnerName column.


select * from nhd.nhd_tb;

select distinct(OwnerName) from nhd.nhd_tb;

select * from nhd.nhd_tb where OwnerName = 'Oname';

select count(*) from nhd.nhd_tb where ownername = 'Oname';
-- 31215

--- Update the trash value with an 'null' value.
Update nhd.nhd_tb 
set ownername = null
where ownername = 'Oname';

select Ownername from nhd.nhd_tb where ownername like 'x%';

--- correction of ambigioues value
Update nhd.nhd_tb
set ownername = null
where ownername like 'x%';

select * from nhd.nhd_tb where ownername isnull;

select count(*) from nhd.nhd_tb where ownername isnull;
--31215


--------------------------------------------------------------------------------xxxxxxxx---------------------------------------------------------------


---- Remove Trash value from OwnerAddress column.

select * from nhd.nhd_tb;

select * from nhd.nhd_tb where owneraddress = 'Oadd';
--presence of trash value

select count(*) from nhd.nhd_tb where owneraddress= 'Oadd';
---30462

select * from nhd.nhd_tb;


--- Update the trash value with an 'null' value.

Update nhd.nhd_tb
set owneraddress = null
where owneraddress = 'Oadd';

select * from nhd.nhd_tb where owneraddress = 'Oadd';

select * from nhd.nhd_tb where owneraddress isnull;

--- correction of ambigioues value
Update nhd.nhd_tb
set owneraddress = null
where owneraddress = '"x`"';


select * from nhd.nhd_tb where owneraddress isnull;


select * from nhd.nhd_tb;


--------------------------------------------------------------------------------xxxxxxxx---------------------------------------------------------------

select * from nhd.nhd_tb;

---- Remove Trash value from Acreage column.

select * from nhd.nhd_tb where Acreage = 0.0001;
--presence of trash value

select count(*) from nhd.nhd_tb where acreage = 0.0001;
--30462

--- Update the trash value with an 'null' value.
update nhd.nhd_tb 
set Acreage = null
where Acreage = 0.0001;

select * from nhd.nhd_tb;

select * from nhd.nhd_tb where Acreage isnull;

select * from nhd.nhd_tb;

--------------------------------------------------------------------------------xxxxxxxx---------------------------------------------------------------

---- Remove Trash value from TaxDistrict column.

select * from nhd.nhd_tb;

select * from nhd.nhd_tb where taxdistrict = 'Stax';
--presence of trash value

select count(*) from nhd.nhd_tb where taxdistrict = 'Stax';
---30462

select * from nhd.nhd_tb;

--- Update the trash value with an 'null' value.

Update nhd.nhd_tb
set taxdistrict = null
where taxdistrict= 'Stax';

select * from nhd.nhd_tb where taxdistrict ='Stax';

select * from nhd.nhd_tb where taxdistrict isnull;

select count(*) from nhd.nhd_tb where taxdistrict isnull;
---30462


select * from nhd.nhd_tb;



--------------------------------------------------------------------------------xxxxxxxx---------------------------------------------------------------

select * from nhd.nhd_tb;

---- Remove Trash value from landvalue column.

select * from nhd.nhd_tb where landvalue = 11111;
--presence of trash value

select count(*) from nhd.nhd_tb where landvalue =11111;
---30462

select * from nhd.nhd_tb;

--- Update the trash value with an 'null' value.

Update nhd.nhd_tb
set landvalue = null
where landvalue = 11111;

select * from nhd.nhd_tb where landvalue= 11111;


select * from nhd.nhd_tb where landvalue isnull;

select count(*) from nhd.nhd_tb where landvalue isnull;
---30462

select * from nhd.nhd_tb;


--------------------------------------------------------------------------------xxxxxxxx---------------------------------------------------------------

---- Remove Trash value from buildingvalue column.

select * from nhd.nhd_tb;

select * from nhd.nhd_tb where buildingvalue =55555;
--presence of trash value

select count(*) from nhd.nhd_tb where buildingvalue = 55555;
---30462

select * from nhd.nhd_tb;

--- Update the trash value with an 'null' value.


update nhd.nhd_tb
set buildingvalue = null
where buildingvalue = 55555;

select * from nhd.nhd_tb where buildingvalue =55555;

select * from nhd.nhd_tb where buildingvalue isnull;

select count(*) from nhd.nhd_tb where buildingvalue isnull;
---30462

select * from nhd.nhd_tb;



--------------------------------------------------------------------------------xxxxxxxx---------------------------------------------------------------

---- Remove Trash value from totalvalue column.

select * from nhd.nhd_tb;

select * from nhd.nhd_tb where totalvalue = 22222;
--presence of trash value

select count(*) from nhd.nhd_tb where totalvalue = 22222;
---30462

select * from nhd.nhd_tb;


--- Update the trash value with an 'null' value.

update nhd.nhd_tb
set totalvalue= null
where totalvalue = 22222;


select * from nhd.nhd_tb where totalvalue = 22222;

select * from nhd.nhd_tb where totalvalue isnull;


select count(*) from nhd.nhd_tb where totalvalue isnull;
---30462

select * from nhd.nhd_tb;



--------------------------------------------------------------------------------xxxxxxxx---------------------------------------------------------------


---- Remove Trash value from yaerbuilt column.

select * from nhd.nhd_tb;

select * from nhd.nhd_tb where yearbuilt = 99999;
--presence of trash value

select count(*) from nhd.nhd_tb  where yearbuilt = 99999;
---32314

select * from nhd.nhd_tb;


--- Update the trash value with an 'null' value.

update nhd.nhd_tb
set yearbuilt= null
where yearbuilt = 99999;


select * from nhd.nhd_tb where yearbuilt = 99999;

select * from nhd.nhd_tb where yearbuilt isnull;


select count(*) from nhd.nhd_tb where yearbuilt isnull;
---32314

select * from nhd.nhd_tb;



--------------------------------------------------------------------------------xxxxxxxx---------------------------------------------------------------

---- Remove Trash value from bedrooms column.

select * from nhd.nhd_tb;

select * from nhd.nhd_tb where bedrooms = 55;
--presence of trash value

select count(*) from nhd.nhd_tb  where bedrooms = 55;
---32320

select * from nhd.nhd_tb;


--- Update the trash value with an 'null' value.

update nhd.nhd_tb
set bedrooms = null
where bedrooms = 55;


select * from nhd.nhd_tb where bedrooms = 55;

select * from nhd.nhd_tb where bedrooms isnull;


select count(*) from nhd.nhd_tb where bedrooms isnull;
---32320

select * from nhd.nhd_tb;


--------------------------------------------------------------------------------xxxxxxxx---------------------------------------------------------------

---- Remove Trash value from fullbath column.

select * from nhd.nhd_tb;

select * from nhd.nhd_tb where fullbath = 77;
--presence of trash value

select count(*) from nhd.nhd_tb  where fullbath = 77;
---32202

select * from nhd.nhd_tb;


--- Update the trash value with an 'null' value.

update nhd.nhd_tb
set fullbath = null
where fullbath = 77;


select * from nhd.nhd_tb where fullbath = 77;

select * from nhd.nhd_tb where fullbath isnull;


select count(*) from nhd.nhd_tb where fullbath isnull;
---32202

select * from nhd.nhd_tb;


--------------------------------------------------------------------------------xxxxxxxx---------------------------------------------------------------

---- Remove Trash value from halfbath column.

select * from nhd.nhd_tb;

select * from nhd.nhd_tb where halfbath = 11;
--presence of trash value

select count(*) from nhd.nhd_tb  where halfbath = 11;
---32333

select * from nhd.nhd_tb;


--- Update the trash value with an 'null' value.

update nhd.nhd_tb
set halfbath = null
where halfbath = 11;


select * from nhd.nhd_tb where halfbath = 11;

select * from nhd.nhd_tb where halfbath isnull;


select count(*) from nhd.nhd_tb where halfbath isnull;
---32333

select * from nhd.nhd_tb;


--------------------------------------------------------------------------------xxxxxxxx--------------------------------------------------------------------
