------------schema  بص ياعم احنا بنعملها علي تنظم  الداتا بيز عندنا بتجمع كذا جدول في schema 
------------هو بيحطها في اسكيما defult اسمها dbo
-------------- لما بنيجي نكريت داتا بيز جديده  بينشئ 2 فولدرز (mdf,ldf)
--------------------------mdf لأعمدة  الصفوف    العلاقات  الفهارس   schema  ,select
---------------------------------ldf   insert , ubdate ,delete
---------------------we have 4 constreant (pk,fk,cheak,defult)
-----------------------

create database goman
CREATE TABLE frindtarek (
    numfrind INT,
    name VARCHAR(30),
    adress VARCHAR(50),
    gender VARCHAR(5),
    CONSTRAINT n_pk PRIMARY KEY(numfrind),
    CONSTRAINT uni UNIQUE(name),
    CONSTRAINT ch CHECK (numfrind IS NOT NULL AND name IS NOT NULL)
);

ALTER TABLE frindtarek                       --- في حاله ان هو عندي وعايز اعمل عليه constraint
ADD CONSTRAINT chk_gender CHECK (gender IN ('M', 'F'));


ALTER TABLE frindtarek
ADD age INT CHECK (age >= 18 AND age <= 30);    --- لو هضيف عمود جديد واسنخدمنا constran check ممكن كنا نكتبه في كرييت table بس خلاص فات الاوان


ALTER TABLE frindtarek

ADD CONSTRAINT df_address DEFAULT 'Cairo' FOR adress;


CREATE RULE rule_adress AS 
@x IN ('CAIRO', 'ISMAILIA', 'PORTSAID');
 sp_bindrule 'rule_adress', 'frindtarek.adress';



insert into frindtarek
values (1,'ahmed ashraf','belbes sharqia','m',23)
 
insert into frindtarek
values (2,'ziad','belbes sharqia','m',23)
          
insert into frindtarek                            ---مش هيضيفها طبعا لاني قولنا الاسم uniqe فامش هيضيف الاسم مرتين   
values (3,'ahmed ashraf','belbes sharqia','m',23)

insert into frindtarek                           
values (3,'lelwa','belbes sharqia','m',23)

insert into frindtarek                           
values (4,'zaza',,'m',23)

insert into frindtarek(numfrind, name, gender, age)                           
values (5,'ali', 'm',23)                          ----defult


insert into frindtarek                           
values (6,'mo','belbes sharqia','f',23)

insert into frindtarek                           
values (7,'jo','cairo','f',20)


insert into frindtarek                           
values (8,'aliiii','ismailia','f',23)


select * from frindtarek

                     ---- يبقي عندا constranant بكذا طريقه
update frindtarek
set adress='obour'
where adress=''

select * from frindtarek




CREATE TABLE hobbies (hobby_id INT PRIMARY KEY,numfrind INT, hobby_name VARCHAR(50),
CONSTRAINT fk_friend FOREIGN KEY (numfrind) REFERENCES frindtarek(numfrind));


INSERT INTO hobbies (hobby_id, numfrind, hobby_name)
VALUES (101, 1, 'Football'),(102, 1, 'Reading');

INSERT INTO hobbies (hobby_id, numfrind, hobby_name)
VALUES 
(201, 1, 'volly'),
(202, 1, 'writing'),
(203, 3, 'Swimming'),
(204, 5, 'Gaming');


select *   from hobbies
update hobbies
set hobby_id=1
where hobby_id=101


update hobbies
set hobby_id=3
where hobby_id=102



update hobbies
set hobby_id=101
where hobby_id=1


update hobbies
set hobby_id=102
where hobby_id=3




CREATE TABLE teba (
    name VARCHAR(10),
    num INT
);


create schema frinds 


ALTER SCHEMA frinds TRANSFER dbo.teba;
