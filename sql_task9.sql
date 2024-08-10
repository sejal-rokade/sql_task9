create table mobile(
	brand varchar(100),
	model varchar(100),
	storage varchar(100),
	price int
)

select * from mobile

insert into mobile values('Apple','iphone 13','128GB',999)

copy mobile from 'D:\DATA ANALYTICS\SQL\Task\mobile_data.csv' delimiter ',' csv header

--create 6 regex operation example 

--first six char anything then remainng numbers are 11 or 12 or 13

select * from mobile where model ~* '^[a-z]{6} (11|12|13)$'

-- any 3 numbers then g and b

select * from mobile where storage ~* '^[0-9]{3}(GB)$'

--first digit 6 or 3 and secound digit anything then g and b char

select * from mobile where storage ~* '^(6|3)[0-9](GB)$'

--any 5 char of brand

select * from mobile where brand ~* '^[a-z]{5}$'

--first any six char then any two digit or any two char

select * from mobile where model ~* '^[a-z]{6} ([0-9]{2}|[a-z]{2})$'

--secound digit should be 4 or 8 

select * from mobile where price::varchar ~* '^[0-9](4|8)[0-9]$'

