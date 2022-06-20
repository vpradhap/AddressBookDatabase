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

--UC6 Retrieve data
--By city
select * from Addressbook where city = 'salem'
--By state
select * from Addressbook where state = 'tamilnadu'

--UC7 Count data 
--By city
select count(city) as counting from Addressbook
--By state
select count(state) from Addressbook where city = 'salem'

--UC8 Sorting
insert into Addressbook	values
('ram','kumar','mecheri','salem','tamilnadu',636401,9378946521,'ramkumar@gmail.com')
select * from Addressbook where city = 'salem' order by firstname

--UC9 Alter
alter table Addressbook add bookname varchar(100),type varchar(50)
update Addressbook set bookname = 'one' ,type = 'friend' where firstname = 'ram'
update Addressbook set bookname = 'two' ,type = 'family' where firstname = 'sunil'
update Addressbook set bookname = 'three' ,type = 'profession' where firstname = 'naveen'

--UC10 Count by type
insert into Addressbook	values
('sam','anish','kk nagar','chennai','tamilnadu',636401,9378946521,'samanish@gmail.com','one','friend')
select count(type) as counting from Addressbook where type = 'friend'
select count(type) as counting from Addressbook

--UC11 Add same person as both friend and family
insert into Addressbook	values
('sam','anish','kk nagar','chennai','tamilnadu',636401,9378946521,'samanish@gmail.com','one','family')
select * from Addressbook