CREATE DATABASE GUCera;
USE GUCera;
CREATE TABLE Users(
id int NOT NULL PRIMARY KEY IDENTITY,
firstName varchar(20),
lastName varchar(20),
password varchar(20),
gender bit,
email varchar(50),
address varchar(10)
)


CREATE TABLE UserMobileNumber(
id int,
mobileNumber int,
PRIMARY KEY(id,mobileNumber),
FOREIGN KEY(id) references Users on delete cascade on update cascade
)

CREATE TABLE Instructor(
id int,
rating decimal(2,1),
PRIMARY KEY(id),
FOREIGN KEY(id) references Users on delete cascade on update cascade
)
CREATE TABLE Admin(
id int,

PRIMARY KEY(id),
FOREIGN KEY(id) references Users on delete cascade on update cascade
)
CREATE TABLE Student(
id int,
gpa decimal(3,2),
PRIMARY KEY(id),
FOREIGN KEY(id) references Users on delete cascade on update cascade
)
CREATE TABLE Course(
id int PRIMARY KEY NOT NULL IDENTITY,
creditHours int,
name varchar(10),
courseDescription varchar(200),
price decimal(6,2),
content varchar(20),
adminId int,
instructorId int,
accepted bit,

FOREIGN KEY (instructorId) references Instructor,
FOREIGN KEY (AdminId) references Admin
)

CREATE TABLE Assignment(
cid int,
number int,
type varchar(10),
fullGrade int,
weight decimal(4,1),
deadline datetime,
content varchar(200),
PRIMARY KEY (cid,number,type),
FOREIGN KEY(cid) references Course on delete cascade on update cascade
)
CREATE TABLE Feedback(
cid int,
number int identity ,
comments varchar(100),
numberOfLikes int default 0,
sid int,

PRIMARY KEY (cid,number),
FOREIGN KEY (cid) references Course on delete cascade on update cascade,
FOREIGN KEY(sid) references Student
)
CREATE TABLE Promocode(
code varchar(6) PRIMARY KEY NOT NULL ,
isuueDate datetime,
expiryDate datetime,
discount decimal(4,2),
adminId int,
FOREIGN KEY(adminId) references Admin,
)
CREATE TABLE StudentHasPromcode(
sid int,
code varchar(6),
PRIMARY KEY (sid,code),
FOREIGN KEY(sid) references Student,
FOREIGN KEY(code) REFERENCES Promocode on delete cascade on update cascade
)
CREATE TABLE CreditCard(
number varchar(15) PRIMARY KEY NOT NULL,
cardHolderName varchar(16),
expiryDate datetime,
cvv varchar(3),
)
CREATE TABLE StudentAddCreditCard(
sid int,
creditCardNumber varchar(15),

FOREIGN KEY(sid) references Student,
FOREIGN KEY(creditCardNumber) references CreditCard on delete cascade on update cascade,
PRIMARY KEY (sid,creditCardNumber) 
)
CREATE TABLE StudentTakeCourse(
sid int,
cid int,
instId int,
payedfor bit,
grade decimal(10,2),

PRIMARY KEY(sid,cid,instId),
FOREIGN KEY(sid) references Student,
FOREIGN KEY (cid) references Course on delete cascade on update cascade,
FOREIGN KEY (instId) references Instructor,
)



CREATE TABLE StudentTakeAssignment(
sid int , 
cid int,
assignmentNumber int,
assignmentType varchar(10),
grade decimal(5,2),

FOREIGN KEY (cid,assignmentNumber,assignmentType) references Assignment,
FOREIGN KEY(sid) references Student,
PRIMARY KEY(sid,cid,assignmentNumber,assignmentType,grade)
)

CREATE TABLE StudentRateInstructor(
sid int,
instId int,
rate decimal,
FOREIGN KEY(sid) references Student,
FOREIGN KEY(instId) references Instructor,
PRIMARY KEY (sid,instId)
)

CREATE TABLE StudentCertifyCourse(

sid int,
cid int,
issueDate datetime,
FOREIGN KEY(sid) references Student,
FOREIGN KEY(cid) references Course on delete cascade on update cascade,
PRIMARY KEY(sid,cid)
)

CREATE TABLE CoursePrerequisiteCourse(

cid int,
prerequisiteId int,

FOREIGN KEY(cid) references Course on delete cascade on update cascade,

Foreign key(prerequisiteId) references Course,

primary key(prerequisiteId,cid)

)

CREATE TABLE InstructorTeachCourse(

instId int,
cid int,

FOREIGN KEY(instId) references Instructor,
FOREIGN KEY (cid) references Course on delete cascade on update cascade,
PRIMARY KEY(instId,cid)
)



