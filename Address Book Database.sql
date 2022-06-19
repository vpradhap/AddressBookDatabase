--UC1 Create database
create database AddressBookService
use AddressBookService

--UC2 Create table
create table Addressbook(firstname varchar(100),lastname varchar(100),address varchar(200),city varchar(100),state varchar(100),zip int,phone bigint,email varchar(100))
select * from Addressbook

--UC3 Inserting contacts
insert into Addressbook	values
('pradhap','venkat','mettur','salem','tamilnadu',636402,9234567893,'pradhapvenkat@gmail.com'),
('ram','kumar','mecheri','salem','tamilnadu',636401,9378946521,'ramkumar@gmail.com'),
('sunil','kumar','RS puram','coimbatore','tamilnadu',640215,6871212693,'sunilkumar@gmail.com'),
('naveen','mathiyalagan','chrompet','chennai','tamilnadu',636402,6984564523,'naveen@gmail.com')

--UC4 Updating existing contact
update Addressbook set lastname = 'prasad' where firstname = 'ram'

--UC5 Deleting contact
delete Addressbook where firstname = 'ram'