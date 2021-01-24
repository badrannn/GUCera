
create proc studentRegister

@first_name varchar(20),
@last_name varchar(20),
@password varchar(20),
@email varchar(50),
@gender bit,
@address varchar(10)

as
begin

INSERT INTO Users
VALUES(@first_name,@last_name,@password,@gender,@email,@address);
Insert INTO Student(id,gpa)
Values(IDENT_CURRENT('Users'),0);

end


go
create proc InstructorRegister

@first_name varchar(20),
@last_name varchar(20),
@password varchar(20),
@email varchar(50),
@gender bit,
@address varchar(10)

as

INSERT INTO Users
Values(@first_name,@last_name,@password,@gender,@email,@address);
Insert INTO Instructor
Values(IDENT_CURRENT('Users'),0);


go
create proc userLogin
@ID int,
@password varchar(20)

as

DECLARE @Success BIT
DECLARE @Type INT

IF(EXISTS (SELECT * FROM Users WHERE id = @ID
AND password = @password))

BEGIN

SET @Success = 1

IF(EXISTS(SELECT * FROM Student WHERE @ID = id))
SET @Type = 2;
IF(EXISTS(SELECT * FROM Admin WHERE @ID = id))
SET @Type =1;
IF(EXISTS(SELECT * FROM Instructor WHERE @ID = id))
SET @TYPE = 0;

PRINT 'Success:' +
CAST(@Success AS VARCHAR(10)) + 
'Type:' + CAST(@Type AS VARCHAR(10))

END

else

PRINT 'Success:
0'

go
create proc addMobile
@ID int,
@Mobile_number int
as
if(exists( select* from Users where @ID = id))
begin 
insert into UserMobileNumber
values(@ID,@Mobile_number);
end

go
create proc AdminListInstr
as
select u.firstName,u.lastName
from Instructor i
inner join Users u on i.id =u.id

go
create proc AdminViewInstructorProfile
@id int
as
if(exists(select* from Instructor where @id = id))
begin
select u.firstName,u.lastName,u.gender,u.email,u.address,i.rating from Instructor i 
INNER JOIN Users u on i.id=u.id
where  i.id=@id
end

go
CREATE PROC AdminViewAllCourses
as
select c.name,c.creditHours,c.price,c.content,c.accepted from Course c


go
CREATE PROC AdminViewNonAcceptedCourses
as
Select name, creditHours, price, content from Course where accepted=0 or accepted is null





go
create proc AdminViewCourseDetails

@courseId int

as

Select name, creditHours, price, content, accepted from Course c
where  c.id=@courseId


go
create proc AdminAcceptRejectCourse

@adminId int,
@courseId int

as

UPDATE Course
SET accepted=1

where adminId=@adminid AND id=@courseId


go
create proc AdminCreatePromocode
@code varchar(6),
@issueDate datetime,
@expiryDate datetime,
@discount decimal(4,2),
@adminid int

as

INSERT INTO Promocode(code, isuueDate, expiryDate, discount, adminId)
VALUES(@code, @issueDate, @expiryDate, @discount, @adminid);


go
create proc AdminListAllStudents
as
SELECT u.firstName,u.lastName 
from Users u
inner join Student s on s.id=u.id

go
create proc AdminViewStudentProfile
@sid int

as
SELECT U.firstName, U.lastName, U.gender, U.email, U.address, S.gpa
FROM Users U
inner join Student S on U.id=S.id
where U.id=@sid


go
create proc AdminIssuePromocodeToStudent
@Sid int,
@pid VARCHAR(10)

as
INSERT INTO StudentHasPromcode(sid,code)
VALUES(@Sid, @pid);

go
create proc InstAddCourse
@creditHours int,
@Name varchar(10),
@price int,
@instructorId int

as
INSERT INTO Course(name, price, creditHours, content, instructorId, adminId, courseDescription, accepted)
VALUES(@Name, @price, @creditHours, null, @instructorId, null,null,null);
INSERT INTO InstructorTeachCourse(instId, cid)
VALUES(@instructorId,IDENT_CURRENT('Course'));

go
create proc UpdateCourseContent
@Instrid int,
@courseId int,
@content varchar(20)

as
UPDATE Course 
SET content=@content
WHERE id=@courseId AND instructorId=@Instrid

go
create proc UpdateCourseDescription
@instrId int,
@courseId int,
@courseDescription varchar(200)

as
UPDATE Course
SET courseDescription=@courseDescription
WHERE id=@courseId AND instructorId=@Instrid

go
create proc AddAnotherInstructorToCourse
@insid int,
@cid int,
@adderIns int

as
IF(EXISTS (SELECT * FROM InstructorTeachCourse WHERE instId = @adderIns AND cid=@cid))
begin
INSERT INTO InstructorTeachCourse(instId, cid)

VALUES (@insid, @cid);
end

go
create proc InstructorViewAcceptedCoursesByAdmin
@instrId int

as
SELECT c.id, name, creditHours from Course c
where instructorId=@instrId AND accepted=1

go

create proc DefineCoursePrerequisites
@cid int, 
@prerequsiteId int

as
INSERT INTO CoursePrerequisiteCourse(cid, prerequisiteId)
VALUES(@cid, @prerequsiteId);


go
create proc DefineAssignmentOfCourseOfCertianType
@instrId int,
@cid int,
@number int,
@type varchar(10),
@fullgrade int,
@weight decimal(4,1),
@deadline datetime,
@content varchar(200)

as
Insert INTO Assignment(cid, number, type, fullGrade, weight, deadline, content)
VALUES (@cid,@number,@type,@fullgrade,@weight,@deadline,@content);


go
create proc updateInstructorRate
@insid int

as
declare @x decimal;
select  @x =avg(rate)
from StudentRateInstructor 
where instId=@insid
Update Instructor
set rating =@x
where id=@insid

go
create proc ViewInstructorProfile
@insid int

as
SELECT U.firstName, U.lastName, U.gender, U.email, U.address,I.rating, M.mobileNumber from Users U
inner join Instructor I ON U.id=I.id
inner join UserMobileNumber M ON I.id=M.id

where U.id=@insid

go
create proc InstructorViewAssignmentsStudents
@instrId int, 
@cid int

as
SELECT sid, cid, s.assignmentNumber, s.assignmentType from StudentTakeAssignment s
where cid=@cid

go

create proc InstructorgradeAssignmentOfAStudent
@instrId int,
@sid int,
@cid int,
@assignmentNumber int,
@type varchar(10),
@grade decimal(5,2)

as
UPDATE StudentTakeAssignment
SET grade=@grade
WHERE sid=@sid AND cid=@cid AND assignmentNumber=@assignmentNumber AND assignmentType=@type


go
create proc ViewFeedbacksAddedByStudentsOnMyCourse
@instrId int,
@cid int

as

SELECT number, comments, numberOfLikes from Feedback
where cid=@cid


go
create proc calculateFinalGrade
@cid int, 
@sid int ,
@insId int 
as
declare @x decimal;
select @x = sum((s.grade/a.fullGrade)*a.weight) 
from StudentTakeAssignment s
inner join Assignment a on s.assignmentNumber=a.number
where s.sid=@sid and s.cid=@cid 
update StudentTakeCourse
SET grade = @x
where sid=@sid and cid=@cid 


go
create proc InstructorIssueCertificateToStudent
@cid int,
@sid int,
@insId int,
@issueDate datetime

as
INSERT INTO StudentCertifyCourse(sid,cid,issueDate)
VALUES(@sid,@cid,@issueDate);






go
CREATE PROCEDURE viewMyProfile 
@id int

AS

SELECT s.*,u.*
FROM Student s
inner join Users u on u.id=s.id 
WHERE s.id = @id

GO


Create PROCEDURE editMyProfile
@id int,
@fname varchar(10),
@lname varchar(10),
@pass varchar(10),
@gender binary,
@email varchar(10),
@address varchar(10)
AS

 
 IF @fname IS NOT NULL
Update Users
SET firstName=@fname
Where id=@id

IF @lname IS NOT NULL
Update Users
SET lastName=@lname
Where id=@id

IF @pass IS NOT NULL
Update Users
SET password=@pass
Where id=@id


IF @gender IS NOT NULL
Update Users
SET gender=@gender
Where id=@id

IF @email IS NOT NULL
Update Users
SET email=@email
Where id=@id

IF @address IS NOT NULL
Update Users
SET address=@address
Where id=@id


go
CREATE PROCEDURE availableCourses

AS

Select c.name
from Course c
where c.accepted=1



go
CREATE PROCEDURE courseInformation
@id int
AS
select c.*,u.firstName,u.lastName
from Course c

inner join Users u on u.id=c.instructorId
where c.id=@id

go
CREATE PROCEDURE enrollInCourse
@sid int,
@cid int,
@instr int
AS

INSERT INTO StudentTakeCourse(sid,cid,instId)
VALUES (@sid,@cid,@instr);


GO


GO
CREATE PROCEDURE addCreditCard
@sid int,
@number varchar(15),
@cardHolderName varchar(16),
@expiryDate datetime,
@cvv varchar(3)

AS


INSERT INTO CreditCard(number,cardHolderName,expiryDate,cvv)
VALUES(@number,@cardHolderName,@expiryDate,@cvv)


INSERT INTO StudentAddCreditCard(sid,creditCardNumber)
VALUES(@sid,@number)



go
CREATE PROCEDURE viewPromocode
@sid int
AS


SELECT p.code,p.isuueDate,p.expiryDate,p.discount,p.adminId
FROM StudentHasPromcode  s
inner join Promocode p on p.code = s.code
where s.sid =@sid




go
CREATE PROCEDURE payCourse
@cid int,
@sid int
AS 
Update StudentTakeCourse 
Set payedfor =1
WHERE 
sid=@sid and cid=@cid


GO 
CREATE PROCEDURE enrollInCourseViewContent
@id int,
@cid int
AS


SELECT c.id,c.creditHours,c.name,c.courseDescription,c.price,c.content
FROM StudentTakeCourse s INNER JOIN Course c ON c.id = s.cid
WHERE s.sid = @id AND c.id = @cid



GO
CREATE PROCEDURE viewAssign
@courseId int,
@sid varchar(10)
AS


select a.*
from Assignment a
inner join StudentTakeAssignment s on a.cid=s.cid
where s.sid=@sid and s.cid = @courseId


GO
CREATE PROCEDURE submitAssign
@assignType varchar(10),
@assignnumber int,
@sid int,
@cid int
AS
Insert into StudentTakeAssignment(sid,cid,assignmentNumber,assignmentType,grade)
values(@sid,@cid,@assignnumber,@assignType,0)


GO 
CREATE PROCEDURE viewAssignGrades
@assignnumber int,
@assignType varchar(10),
@cid int,
@sid int
AS
select grade from StudentTakeAssignment
where sid=@sid and @assignnumber=assignmentNumber


GO
CREATE PROCEDURE viewFinalGrade 
@cid int,
@sid int

AS
select grade
from StudentTakeCourse
where cid=@cid and sid=@cid


GO
CREATE PROCEDURE addFeedback
@comment varchar(100),
@cid int,
@sid int
AS
insert into Feedback(cid,sid,comments)
values(@cid,@sid,@comment);


GO
CREATE PROCEDURE rateInstructor
@rate decimal(2,1),
@sid int,
@instID int
AS

INSERT INTO StudentRateInstructor(sid,instId,rate)
VALUES(@sid,@instID,@rate)



GO
CREATE PROCEDURE viewCertificate
@cid int,
@sid int
AS
select * from StudentCertifyCourse
where sid=@sid and cid=@cid























