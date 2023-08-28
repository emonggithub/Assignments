## We create a database
create database TECHNOLOGY;

## We have to use the database called TECHNOLOGY
use TECHNOLOGY;

## Let us create a new table called technology_info having the columns "id" and "technology"
create table technology_info(
id int,
technology varchar(50) not null);

insert into technology_info values (1,'DS'),
(1,'POWERBI'),
(1,'PYTHON'),
(1,'SQL'),
(2,'POWERBI'),
(2,'PYTHON'),
(2,'SQL'),
(3,'POWERBI'),
(3,'PYTHON'),
(3,'SQL');

## We want to fetch all the records
select * from technology_info;

## Write a query to retrieve id where the technology is 'DS','SQL','PYTHON'
select id from technology_info where technology in ('DS','SQL','PYTHON');

select id
from technology_info
where technology = 'DS'
and id in (
       select id 
       from technology_info
       where technology = 'SQL'
       and id in (
       select id
       from technology_info
       where technology = 'PYTHON'
       )
	);

/*
This query selects id values from the technology_info table where the 
technology is 'DS', and those id values must also appear in a subquery 
that filters for 'SQL' technology and where the id values must also appear
 in another subquery that filters for 'PYTHON' technology.
*/