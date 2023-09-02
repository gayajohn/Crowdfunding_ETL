-- Database: crowdfunding_db

-----------------------------------------------
-- creating schemas for crowdfunding tables --
-----------------------------------------------

-- table containing categories
create table category 
(
	category_id varchar(6) primary key,
	category varchar(50)
);

-- table containing subcategories
create table subcategory 
(
	subcategory_id varchar(9) primary key,
	subcategory varchar(50)
);

-- table containing contact information
create table contacts 
(
	contact_id int primary key,
	first_name varchar(50),
	last_name varchar(50),
	email varchar(255)
);

-- table containing campaign information
create table campaign
(
	cf_id int primary key,
	contact_id int not null,
	company_name varchar(100),
	description varchar(300),
	goal float,
	pledged float,
	outcome varchar(10),
	backers_count int,
	country varchar(2),
	currency varchar(3),
	launched_date varchar(10),
	end_date varchar(10),
	category_id varchar(6) not null,
	subcategory_id varchar(9) not null,
	foreign key (contact_id) references contacts(contact_id),
	foreign key (category_id) references category(category_id),
	foreign key (subcategory_id) references subcategory(subcategory_id)
);


select * from category;
select * from subcategory;
select * from contacts limit 10;
select * from campaign limit 10;

-- DROP DATABASE IF EXISTS crowdfunding_db;

CREATE DATABASE crowdfunding_db
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_Canada.1252'
    LC_CTYPE = 'English_Canada.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;