STUDENT MANAGEMENT SYSTEM
----------------------

student table:
---------------------------
create table Student
(id int,
name varchar(20),
dob date);

STORED PROCEDURE
------------------------
create procedure InsertStudent
    @Sid int,
    @Sname varchar(20),
    @Sdob date,
	
 
as
Begin
    Insert into InsertStudent(Sid,Sname,Sdob) values(@Sid,@Sname,@Sdob)
End


COURSE TABLE:
-------------------------------
create table Course_Details
(Cid int,
Cname varchar(20),
Cduration int,
Ccourse varchar(20),
Cfees int,
Clevel varchar(20),
Cplacement varchar(20),
Ctype varchar(20),
choice  int,
Monthlyfee varchar(30));


Stored Procedure of Course Table
-----------------------------------------
create procedure Course_Details
    	@Cid int,
   	@Cname varchar(20),
    	@Cduration int,
	@Ccourse varchar(20),
    	@Cfees int,
    	@Clevel varchar(20),
    	@Cplacement varchar(20),    
   	@Ctype varchar(20),
	@choice int,
	@Monthlyfee varchar(30)
 
as
Begin
    Insert into Course_Details(Cid,Cname,Cduration,Ccourse,Cfees,Clevel,Cplacement,Ctype,choice,Monthlyfee) values(@Cid,@Cname,@Cduration,@Ccourse,@Cfees,@Clevel,@Cplacement,@Ctype,@choice,@Monthlyfee)
End

select * from Course_Details


Enroll
----------------------

create table EnrollDet
(Sid int,
Cid int,
endate DateTime);


Stored Procedure Enroll
------------------------------------
Create Procedure EnrollmentDet
    @Sid int,
	@Cid int,
	@endate DateTime
 
as
Begin
    Insert into EnrollDet(Sid,Cid,endate) values(@Sid,@Cid,@endate)
End


display
---------------------------------
select * from Student

select * from Course_Details

select * from EnrollDet

