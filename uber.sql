create database uber;
use uber;

create table uber_1(
customer_id int primary key,
first_name varchar(20),
last_name varchar(20),
contact_no int,
gender varchar(10),
booking_id int,
booking_type varchar(20),
booking_time datetime);
select * from uber_1;

create table uber_2(
pickup_loc varchar(40),
drop_loc varchar(40),
date_of_arrival datetime,
time_of_arrival varchar(20),
driver_id int,
customer_id int foreign key references uber_1(customer_id));
select * from uber_2;
alter table uber_2 add journey_id int primary key;


create table uber_3(
booking_id int foreign key references uber_1(customer_id),
driver_id int,
dfirst_name varchar(20),
dlast_name varchar(20),
gender varchar(20),
contant_no int,
city varchar(20));
select * from uber_3;
alter table uber_3 add driver_id int primary key;