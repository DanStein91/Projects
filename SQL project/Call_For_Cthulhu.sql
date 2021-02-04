DROP DATABASE IF EXISTS Cthulhu_Studies_19201398;

CREATE DATABASE Cthulhu_Studies_19201398;

USE Cthulhu_Studies_19201398;

Create Table Stream(StreamID int not null unique, Study varchar(255) not null, Primary Key (StreamID));

CREATE TABLE Student(StudentID int not null unique auto_increment, Full_Name varchar(255) not null, 
Studies int not null, GPA float not null check (GPA between 0.0 and 4.2), PRIMARY KEY(StudentID), foreign key(Studies) references Stream(StreamID));

ALTER TABLE Student AUTO_INCREMENT = 15022;

CREATE TABLE Teacher(TeacherID int not null unique auto_increment, Full_Name varchar(255) not null, Studies int not null, Email varchar(255), Phone varchar(255), PRIMARY KEY (TeacherID), foreign key(Studies) references Stream(StreamID));
ALTER TABLE Teacher AUTO_INCREMENT = 0001;
ALTER TABLE Teacher ADD foreign key(Studies) references Stream(StreamID);


CREATE TABLE Project(ProjectID int not null unique auto_increment, Title varchar(255) not null, SupervisorID int not null,
Studies int not null, PRIMARY KEY (ProjectID),FOREIGN KEY(SupervisorID) REFERENCES Teacher(TeacherID));
ALTER TABLE Project ADD foreign key(Studies) references Stream(StreamID);
ALTER TABLE Project AUTO_INCREMENT = 67832;

CREATE TABLE Preference(StudentID int not null unique, Rank1 varchar(255) , Rank2 varchar(255) ,Rank3 varchar(255) ,Rank4 varchar(255) ,
Rank5 varchar(255) ,Rank6 varchar(255) ,Rank7 varchar(255) ,Rank8 varchar(255) ,Rank9 varchar(255) ,Rank10 varchar(255) ,Rank11 varchar(255) ,Rank12 varchar(255) ,Rank13 varchar(255) ,
Rank14 varchar(255) ,Rank15 varchar(255) ,Rank16 varchar(255) ,Rank17 varchar(255) ,Rank18 varchar(255) ,Rank19 varchar(255) ,Rank20 varchar(255) , PRIMARY KEY(StudentID),
FOREIGN KEY(StudentID) REFERENCES Student(StudentID));

CREATE TABLE Project_Assigned(StudentID int unique not null,  ProjectID int unique,PRIMARY KEY (StudentID), FOREIGN KEY(StudentID) REFERENCES Student(StudentID));
ALTER TABLE Project_Assigned ADD FOREIGN KEY(ProjectID) REFERENCES Project(ProjectID);

insert into Stream(StreamID, Study) values(1, "CS"),(2,"CS + DS"),(3, "CS and/or CS + DS");

INSERT INTO Student(Full_Name, Studies, GPA) VALUES("Dan Stein", 2, 4.1),("Mandalorian",1,3.2)
,("Deckard Cain",2,1.5),("Diablo Lord of Terror",1,2),("Mephisto Lord of Hatred",1,3.8),
("Baal Lord of Detruction",1,2.9),("Dovahkin",3,4.2),("Jon Snow",1,0),("Tyrian Lanister",2,4),
("Tyriel",3,2.4),("Tal Rasha",2,3),("Imperius",1,1.2),("Frodo Baggins",1,0.1),("Boromir",3,3.2)
,("Legolas",2,3.9),("Gandalf Grey",2,4),("Steve Rogers",1,0.3),("Tony Stark",2,4.2)
,("Peter Quill",3,3.1),("Michael Jackson",2,2.2); 

INSERT INTO Teacher(Full_Name, Studies, Email, Phone) VALUES("Harry Potter", 2, "Harry_P@Thulu.com","Callus Harrus"),("Chuck Norris",1, "Chucky@Thulu.com","+420 69"), ("Son Goku",3,"Goku@Thulu.com","King Kai"),
("Saitama", 1, "Saitama@Thulu.com","+000000001");

INSERT INTO Project(Title, SupervisorID, Studies) VALUES("Cthulhu and Dagon DB",  1, 2),("Cthulhu App Creation",2,1), 
("Cthulhu and Dagon Cooking",1,2),("Cthulhu and the one ring",2,1),("Cthulhu got the moves",3,1),
("Dagon vs Cthulhu",3,1),("Cthulhu say wha?",3,2),("Cthulhu is love",2,1),("Cthulhu is live",1,2),
("Cthulhu and the goblet of fire",4,1),("Dagon Operating system",1,2),("Cthulhu analytics",4,1),("Cthulhu learning algorythm",4,1),
("Cthulhu is getting boring",3,2),("Cthulhu and the marvels of computing",1,2),("Dagon XP",3,2),("Cthulhu and Bash",2,1),
("Daghulhu new system",1,2),("MyCthulhu",2,1),("Oradagon and MonthulhuDB",3,2); 

SELECT * from Student;

INSERT INTO Preference(StudentID,Rank1, Rank2,Rank3,Rank4,Rank5,Rank6,Rank7,Rank8,Rank9,Rank10,Rank11,Rank12,Rank13,Rank14,Rank15,Rank16,Rank17 ,Rank18 ,Rank19 ,Rank20) 
VALUES(15022,"Cthulhu App Creation", "Cthulhu and the one ring",
"Dagon XP","Oradagon and MonthulhuDB",NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL),
(15023,"Cthulhu and Dagon DB", "Cthulhu and the marvels of computing","Cthulhu is love","Cthulhu is live","Cthulhu is getting boring", "MyCthulhu", "Cthulhu got the moves",
 NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL),
(15024,"Daghulhu new system", "Daghulhu new system","Daghulhu new system","Daghulhu new system","Daghulhu new system", "Daghulhu new system", "Daghulhu new system", "Daghulhu new system", "Daghulhu new system","Daghulhu new system",
 "Daghulhu new system", "Daghulhu new system", "Daghulhu new system", "Daghulhu new system","Daghulhu new system", "Daghulhu new system", "Daghulhu new system", "Daghulhu new system", "Daghulhu new system","Daghulhu new system"),
(15025,"Cthulhu say wha?",NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL),
(15026,NULL,NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL),
(15027,NULL,"MyCthulhu", NULL, NULL,NULL, "Cthulhu and Bash", NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL),
(15028,"Cthulhu App Creation", "Cthulhu and the one ring","Dagon XP","Oradagon and MonthulhuDB","Cthulhu and the marvels of computing", NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,
"Oradagon and MonthulhuDB"),
(15029,"Cthulhu and the goblet of fire",NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL),
(15030,"Cthulhu and the goblet of fire","Cthulhu and the one ring", NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL),
(15031,"Cthulhu App Creation",NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,"Oradagon and MonthulhuDB"),
(15032,"Cthulhu App Creation",NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, "Oradagon and MonthulhuDB", NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL),
(15033,"Cthulhu is love",NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL),
(15034,"Cthulhu App Creation",NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL),
(15035,"Cthulhu and Dagon DB","Cthulhu App Creation", "Cthulhu and Dagon Cooking", "Cthulhu and the one ring","Cthulhu got the moves", "Dagon vs Cthulhu", "Cthulhu say wha?", "Cthulhu is love", "Cthulhu is live","Cthulhu and the goblet of fire"
, "Dagon Operating system", "Cthulhu analytics", "Cthulhu learning algorythm", "Cthulhu is getting boring","Cthulhu and the marvels of computing", "Dagon XP", "Cthulhu and Bash", "Daghulhu new system", "MyCthulhu","Oradagon and MonthulhuDB"),
(15036,"Cthulhu analytics",NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL),
(15037,NULL,NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL),
(15038,"Daghulhu new system",NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL),
(15039,"Cthulhu App Creation",NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL),
(15040,NULL,NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL),
(15041,"Cthulhu and Bash","Cthulhu and Bash", "Cthulhu and Bash", NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL);


Drop view if exists Ordered_Students;

#view that shows students in order in respect to their gpa, showing all their ranked project preferences, this is to help the application team determing the best performing students
CREATE VIEW Ordered_Students AS SELECT A.StudentID, A.Full_Name, A.Studies, A.GPA, B.Rank1, B.Rank2, B.Rank3, B.Rank4, B.Rank5, B.Rank6, B.Rank7, B.Rank8, B.Rank9, B.Rank10, B.Rank11, B.Rank12,
 B.Rank13, B.Rank14, B.Rank15, B.Rank16, B.Rank17, B.Rank18, B.Rank19, B.Rank20
From Student A inner join Preference B on A.StudentID = B.StudentID order by A.GPA desc;


#the folloiwing update functions will update the previous view to make any project that the students cant take due to unmatching studies as null, this is also to help the application team allocate the projects.
update Ordered_Students A
INNER JOIN Project B on A.Rank1 = B.Title
set Rank1 =
case
when A.Studies = 1 and  A.Studies != B.Studies then  NULL
when A.Studies = 2 and  A.Studies != B.Studies then  NULL
ELSE Rank1
END;

update Ordered_Students A
INNER JOIN Project B on A.Rank2 = B.Title
set Rank2 =
case
when A.Studies = 1 and  A.Studies != B.Studies then  NULL
when A.Studies = 2 and  A.Studies != B.Studies then  NULL
ELSE Rank2
END;

update Ordered_Students A
INNER JOIN Project B on A.Rank3 = B.Title
set Rank3 =
case
when A.Studies = 1 and  A.Studies != B.Studies then  NULL
when A.Studies = 2 and  A.Studies != B.Studies then  NULL
ELSE Rank3
END;

update Ordered_Students A
INNER JOIN Project B on A.Rank4 = B.Title
set Rank4 =
case
when A.Studies = 1 and  A.Studies != B.Studies then  NULL
when A.Studies = 2 and  A.Studies != B.Studies then  NULL
ELSE Rank4
END;

update Ordered_Students A
INNER JOIN Project B on A.Rank5 = B.Title
set Rank5 =
case
when A.Studies = 1 and  A.Studies != B.Studies then  NULL
when A.Studies = 2 and  A.Studies != B.Studies then  NULL
ELSE Rank5
END;

update Ordered_Students A
INNER JOIN Project B on A.Rank6 = B.Title
set Rank6 =
case
when A.Studies = 1 and  A.Studies != B.Studies then  NULL
when A.Studies = 2 and  A.Studies != B.Studies then  NULL
ELSE Rank6
END;

update Ordered_Students A
INNER JOIN Project B on A.Rank7 = B.Title
set Rank7 =
case
when A.Studies = 1 and  A.Studies != B.Studies then  NULL
when A.Studies = 2 and  A.Studies != B.Studies then  NULL
ELSE Rank7
END;

update Ordered_Students A
INNER JOIN Project B on A.Rank8 = B.Title
set Rank8 =
case
when A.Studies = 1 and  A.Studies != B.Studies then  NULL
when A.Studies = 2 and  A.Studies != B.Studies then  NULL
ELSE Rank8
END;

update Ordered_Students A
INNER JOIN Project B on A.Rank9 = B.Title
set Rank9 =
case
when A.Studies = 1 and  A.Studies != B.Studies then  NULL
when A.Studies = 2 and  A.Studies != B.Studies then  NULL
ELSE Rank9
END;

update Ordered_Students A
INNER JOIN Project B on A.Rank10 = B.Title
set Rank10 =
case
when A.Studies = 1 and  A.Studies != B.Studies then  NULL
when A.Studies = 2 and  A.Studies != B.Studies then  NULL
ELSE Rank10
END;

update Ordered_Students A
INNER JOIN Project B on A.Rank11 = B.Title
set Rank11 =
case
when A.Studies = 1 and  A.Studies != B.Studies then  NULL
when A.Studies = 2 and  A.Studies != B.Studies then  NULL
ELSE Rank11
END;

update Ordered_Students A
INNER JOIN Project B on A.Rank12 = B.Title
set Rank12 =
case
when A.Studies = 1 and  A.Studies != B.Studies then  NULL
when A.Studies = 2 and  A.Studies != B.Studies then  NULL
ELSE Rank12
END;

update Ordered_Students A
INNER JOIN Project B on A.Rank13 = B.Title
set Rank13 =
case
when A.Studies = 1 and  A.Studies != B.Studies then  NULL
when A.Studies = 2 and  A.Studies != B.Studies then  NULL
ELSE Rank13
END;

update Ordered_Students A
INNER JOIN Project B on A.Rank14 = B.Title
set Rank14 =
case
when A.Studies = 1 and  A.Studies != B.Studies then  NULL
when A.Studies = 2 and  A.Studies != B.Studies then  NULL
ELSE Rank14
END;

update Ordered_Students A
INNER JOIN Project B on A.Rank15 = B.Title
set Rank15 =
case
when A.Studies = 1 and  A.Studies != B.Studies then  NULL
when A.Studies = 2 and  A.Studies != B.Studies then  NULL
ELSE Rank15
END;

update Ordered_Students A
INNER JOIN Project B on A.Rank16 = B.Title
set Rank16 =
case
when A.Studies = 1 and  A.Studies != B.Studies then  NULL
when A.Studies = 2 and  A.Studies != B.Studies then  NULL
ELSE Rank16
END;

update Ordered_Students A
INNER JOIN Project B on A.Rank17 = B.Title
set Rank17 =
case
when A.Studies = 1 and  A.Studies != B.Studies then  NULL
when A.Studies = 2 and  A.Studies != B.Studies then  NULL
ELSE Rank17
END;

update Ordered_Students A
INNER JOIN Project B on A.Rank18 = B.Title
set Rank18 =
case
when A.Studies = 1 and  A.Studies != B.Studies then  NULL
when A.Studies = 2 and  A.Studies != B.Studies then  NULL
ELSE Rank18
END;

update Ordered_Students A
INNER JOIN Project B on A.Rank19 = B.Title
set Rank19 =
case
when A.Studies = 1 and  A.Studies != B.Studies then  NULL
when A.Studies = 2 and  A.Studies != B.Studies then  NULL
ELSE Rank19
END;

update Ordered_Students A
INNER JOIN Project B on A.Rank20 = B.Title
set Rank20 =
case
when A.Studies = 1 and  A.Studies != B.Studies then  NULL
when A.Studies = 2 and  A.Studies != B.Studies then  NULL
ELSE Rank20
END;

#Here we select the students that have projects in their preference, students with no preference (all null) will be ignored. 
SELECT * FROM Ordered_Students where Rank1 != 'NULL' or Rank2 != 'NULL' or Rank3 !='NULL' or Rank4 != 'NULL' or Rank5 != 'NULL' or Rank6 != 'NULL' or Rank7 != 'NULL' or Rank8 !='NULL' or Rank9 != 'NULL' or Rank10 != 'NULL'
or Rank11 != 'NULL' or Rank12 != 'NULL' or Rank13 !='NULL' or Rank14 != 'NULL' or Rank15 != 'NULL' or Rank16 != 'NULL' or Rank17 != 'NULL' or Rank18 !='NULL' or Rank19 != 'NULL' or Rank20 != 'NULL';


#Procedure to give sugestion to application team based on students first pick, not working.
-- DROP PROCEDURE IF EXISTS looprow;
-- DELIMITER //
-- CREATE PROCEDURE looprow()
-- BEGIN
-- DECLARE n INT DEFAULT 0;
-- DECLARE i INT DEFAULT 0;
-- DECLARE x varchar(255) DEFAULT 0;
-- DECLARE y varchar(255) DEFAULT 0;
-- SELECT COUNT(*) FROM Ordered_Students INTO n;
-- SET i=0;
-- WHILE i<n DO 
-- drop temporary table if exists temp_tbl;
-- Set x = (Select B.Rank1 from Ordered_Students B limit i,1);
-- Set y = (Select B.StudentID from Ordered_Students B limit i,1);
-- create temporary table temp_tbl SELECT * FROM Project_Assigned where StudentID != y;
--   INSERT INTO Project_Assigned (StudentID, Project_Title) values(y,(case when x not in (temp_tbl.Project_Title)then x else null end));
--   SET i = i + 1;
-- END WHILE;
-- End//
-- DELIMITER ;

-- CALL looprow();

#Application team insering after allocating projects
Insert Into Project_Assigned(StudentID, ProjectID) values(15028, 67833),(15022,67847),(15023, 67839);

#Create view with all the information for the assigned project.
create view All_info as select A.StudentID, C.Full_Name as Student, A.ProjectID, B.Title, D.Full_Name as Teacher, D.TeacherID
from Project_Assigned A
inner join Project B on A.ProjectID = B.ProjectID
inner join Student C on A.StudentID = C.StudentID
inner join Teacher D on B.SupervisorID = D.TeacherID;


#A procedure to view specific students relevant information, wich could be use with a GUI for the student to view project and supervisor information, where ID is a variable that depends on the credentials of account.
DROP PROCEDURE IF EXISTS viewer;
DELIMITER //
CREATE PROCEDURE viewer()
BEGIN
DECLARE ID INT DEFAULT 0;
SET ID=15022;
Select A.StudentID, A.Student, A.Title, A.Teacher, B.Email, B.Phone from All_info A inner join Teacher B on A.TeacherID = B.TeacherID where StudentID = ID;
End//
DELIMITER ;

CALL viewer();

#We can achieve the same result of the last procedure however without the procedure we cannot have variables, plus views can't do variable either.
Create view Student_Project_info as Select A.StudentID, A.Student_Name, A.Project_Title, A.Teacher, B.Email, B.Phone from Project_Assigned A inner join Teacher B on A.TeacherID = B.TeacherID where StudentID = 15028;

Select * from Student_Project_info;


#a view that shows satisfaction levels across students, 1 being the highest satisfaction and -1 being the lowest
Create view Satisfaction_level as Select A.StudentID,
case 
when A.Rank1 = B.Title then 1
when A.Rank2 = B.Title then 0.9
when A.Rank3 = B.Title then 0.8
when A.Rank4 = B.Title then 0.7
when A.Rank5 = B.Title then 0.6
when A.Rank6 = B.Title then 0.5
when A.Rank6 = B.Title then 0.4
when A.Rank8 = B.Title then 0.3
when A.Rank9 = B.Title then 0.2
when A.Rank10 = B.Title then 0.1
when A.Rank20 = B.Title then -1
when A.Rank19 = B.Title then -0.9
when A.Rank18 = B.Title then -0.8
when A.Rank17 = B.Title then -0.7
when A.Rank16 = B.Title then -0.6
when A.Rank15 = B.Title then -0.5
when A.Rank14 = B.Title then -0.4
when A.Rank13 = B.Title then -0.3
when A.Rank12 = B.Title then -0.2
when A.Rank11 = B.Title then -0.1
END as Satisfaction
From Preference A inner join All_info B on A.StudentID = B.StudentID;
#Query to show the overall satisfaction of students
select avg(Satisfaction) from Satisfaction_level;

#Show all students that tried to cheat the system
Select StudentID from Preference where 
Rank1 in (Rank2, Rank3, Rank4, Rank5, Rank6, Rank7, Rank8, Rank9, Rank10, Rank11, Rank12, Rank13, Rank14, Rank15, Rank16, Rank17, Rank18,Rank19,Rank20) or
Rank2 in (Rank1, Rank3, Rank4, Rank5, Rank6, Rank7, Rank8, Rank9, Rank10, Rank11, Rank12, Rank13, Rank14, Rank15, Rank16, Rank17, Rank18,Rank19,Rank20) or
Rank3 in (Rank2, Rank1, Rank4, Rank5, Rank6, Rank7, Rank8, Rank9, Rank10, Rank11, Rank12, Rank13, Rank14, Rank15, Rank16, Rank17, Rank18,Rank19,Rank20) or
Rank4 in (Rank2, Rank3, Rank1, Rank5, Rank6, Rank7, Rank8, Rank9, Rank10, Rank11, Rank12, Rank13, Rank14, Rank15,Rank16, Rank17, Rank18,Rank19,Rank20) or
Rank5 in (Rank2, Rank3, Rank4, Rank1, Rank6, Rank7, Rank8, Rank9, Rank10, Rank11, Rank12, Rank13, Rank14, Rank15,Rank16,Rank17, Rank18,Rank19,Rank20) or
Rank6 in (Rank2, Rank3, Rank4, Rank5, Rank1, Rank7, Rank8, Rank9, Rank10, Rank11, Rank12, Rank13, Rank14, Rank15,Rank16,Rank17, Rank18,Rank19,Rank20) or
Rank7 in (Rank2, Rank3, Rank4, Rank5, Rank6, Rank1, Rank8, Rank9, Rank10, Rank11, Rank12, Rank13, Rank14, Rank15,Rank16,Rank17, Rank18,Rank19,Rank20) or 
Rank8 in (Rank2, Rank3, Rank4, Rank5, Rank6, Rank7, Rank1, Rank9, Rank10, Rank11, Rank12, Rank13, Rank14, Rank15,Rank16,Rank17, Rank18,Rank19,Rank20) or
Rank9 in (Rank2, Rank3, Rank4, Rank5, Rank6, Rank7, Rank8, Rank1, Rank10, Rank11, Rank12, Rank13, Rank14, Rank15,Rank16,Rank17, Rank18,Rank19,Rank20) or 
Rank10 in (Rank2, Rank3, Rank4, Rank5, Rank6, Rank7, Rank8, Rank9, Rank1, Rank11, Rank12, Rank13, Rank14, Rank15,Rank16,Rank17, Rank18,Rank19,Rank20) or
Rank11 in (Rank2, Rank3, Rank4, Rank5, Rank6, Rank7, Rank8, Rank9, Rank10, Rank1, Rank12, Rank13, Rank14, Rank15,Rank16,Rank17, Rank18,Rank19,Rank20) or
Rank12 in (Rank2, Rank3, Rank4, Rank5, Rank6, Rank7, Rank8, Rank9, Rank10, Rank11, Rank1, Rank13, Rank14, Rank15,Rank16,Rank17, Rank18,Rank19,Rank20) or 
Rank13 in (Rank2, Rank3, Rank4, Rank5, Rank6, Rank7, Rank8, Rank9, Rank10, Rank11, Rank12, Rank1, Rank14, Rank15,Rank16,Rank17, Rank18,Rank19,Rank20) or
Rank14 in (Rank2, Rank3, Rank4, Rank5, Rank6, Rank7, Rank8, Rank9, Rank10, Rank11, Rank12, Rank13, Rank1, Rank15,Rank16,Rank17, Rank18,Rank19,Rank20) or
Rank15 in (Rank2, Rank3, Rank4, Rank5, Rank6, Rank7, Rank8, Rank9, Rank10, Rank11, Rank12, Rank13, Rank14, Rank1,Rank16,Rank17, Rank18,Rank19,Rank20) or
Rank16 in (Rank2, Rank3, Rank4, Rank5, Rank6, Rank7, Rank8, Rank9, Rank10, Rank11, Rank12, Rank13, Rank14, Rank15,Rank1,Rank17, Rank18,Rank19,Rank20) or
Rank17 in (Rank2, Rank3, Rank4, Rank5, Rank6, Rank7, Rank8, Rank9, Rank10, Rank11, Rank12, Rank13, Rank14, Rank15,Rank16,Rank1, Rank18,Rank19,Rank20) or
Rank18 in (Rank2, Rank3, Rank4, Rank5, Rank6, Rank7, Rank8, Rank9, Rank10, Rank11, Rank12, Rank13, Rank14, Rank15,Rank16,Rank17, Rank1,Rank19,Rank20) or
Rank19 in (Rank2, Rank3, Rank4, Rank5, Rank6, Rank7, Rank8, Rank9, Rank10, Rank11, Rank12, Rank13, Rank14, Rank15,Rank16,Rank17, Rank18,Rank1,Rank20) or
Rank20 in (Rank2, Rank3, Rank4, Rank5, Rank6, Rank7, Rank8, Rank9, Rank10, Rank11, Rank12, Rank13, Rank14, Rank15,Rank16,Rank17, Rank18,Rank19,Rank1);

#see the most unpopular projects and avoiding cheaters
drop view if exists Unwanted;
Create view Unwanted as Select A.ProjectID,count(A.ProjectID) from Project A inner join Preference B on B.Rank20 = A.Title or B.Rank19 = A.Title or B.Rank18 = A.Title or B.Rank17 = A.Title
or B.Rank16 = A.Title or B.Rank15 = A.Title where B.Rank20 not in (Rank1,Rank2,Rank3,Rank4,Rank5) and Rank19 not in (Rank1,Rank2,Rank3,Rank4,Rank5) and Rank18 not in (Rank1,Rank2,Rank3,Rank4,Rank5)
and Rank17 not in (Rank1,Rank2,Rank3,Rank4,Rank5) and Rank16 not in (Rank1,Rank2,Rank3,Rank4,Rank5) and Rank15 not in (Rank1,Rank2,Rank3,Rank4,Rank5) group by A.ProjectID;

select * from Unwanted;

#Show how many projects each supervisor is looking over
Select SupervisorID, count(SupervisorID) from Project group by SupervisorID;

#Teacher Satisfaction
Drop view if exists Teacher_Projects;
Drop view if exists Teacher_Satisfaction;
create view Teacher_Projects as Select SupervisorID, count(SupervisorID) as Project_Num from Project group by SupervisorID;


drop temporary table if exists Teacher_Satisfaction;

DROP PROCEDURE IF EXISTS Satisfaction;
DELIMITER //
CREATE PROCEDURE Satisfaction()
BEGIN
Set @max = (Select max(Project_Num) from Teacher_Projects);
Set @min = (Select min(Project_Num) from Teacher_Projects);
set @norm = @max - @min;
Create Temporary Table Teacher_Satisfaction Select SupervisorID, (1-((Project_Num - @min)/@norm)) as Satisfaction
from Teacher_Projects group by SupervisorID;
End//
DELIMITER ;

CALL Satisfaction();
Select * from Teacher_Satisfaction;