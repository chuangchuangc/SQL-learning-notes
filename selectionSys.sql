
# create a simple course selection database

create database if not exists CoursesSelectionSystem;
use CoursesSelectionSystem;

create table if not exists class(
ClassId int primary key,
ClassName varchar(20) 
);

create table if not exists student(
StudentId int primary key,
StudentName varchar(10) not null,
Class int not null,
foreign key (Class) references class(ClassId)
);

create table if not exists teacher(
TeacherId int primary key,
TeacherName varchar(10) not null
);

create table if not exists course(
CourseId int primary key,
CourseName varchar(20),
Teacher int not null,
foreign key (Teacher) references teacher(TeacherId)
);

create table if not exists selection(
SelectionId int primary key,
Student int not null,
Course int not null,
SelectionDate date not null,
foreign key (Student) references student(StudentId),
foreign key (Course) references course(CourseId)
);