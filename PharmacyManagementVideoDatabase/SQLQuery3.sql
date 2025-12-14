create database pharmacyms
use pharmacyms
create table users(
id int identity(1,1) primary key,
userRole varchar(50) not null,
name varchar(250) not null,
dob varchar(250) not null,
mobile bigint not null,
email varchar(250) not null,
username varchar(250) unique not null,
pass varchar(250) not null
);
INSERT INTO users
(userRole, name, dob, mobile, email, username, pass)
VALUES 
('Pharmacist', 'kumar', '2020-10-01', '123456', 'email@example.com', 'mananpak', 'mananpak'),
('Administrator', 'BTech Days', '1991-07-18', '5656562323', 'btechdays@example.com', 'manan', 'manan'),
('Pharmacist', 'Rohan', '1995-06-14', '1234567890', 'rohan@gmail.com', 'daud', 'daud');

select * from users
 
 Alter Table users
 ADD CONSTRAINT constraint_name UNIQUE (username);

create table medic(
id int identity(1,1) primary key,
mid varchar(250) not null,
mname varchar(250) not null,
mnumber varchar(250) not null,
mDate varchar(250) not null,
eDate varchar(250) not null,
quantity bigint not null,
perUnit bigint not null
);

select mname from medic where eDate >= getdate() and quantity > '0';
select * from medic

select * from medic where eDate <= '4/13/2029';

select * from medic where eDate >= '10/15/2020';

select * from medic where eDate >=getdate();