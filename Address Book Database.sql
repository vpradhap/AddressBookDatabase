--UC1 Create database
create database AddressBookService
use AddressBookService
--UC2 Create table
create table Addressbook(firstname varchar(100),lastname varchar(100),address varchar(200),city varchar(100),state varchar(100),zip int,phone int,email varchar(100))
select * from Addressbook