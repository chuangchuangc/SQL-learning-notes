# find all (Cartesian product)
select * from class,student;
# delete duplicate
select * from class c,student s where c.classId=s.class;

# join
select s.StudentName, c.ClassName from class c, student as s 
where c.ClassId = s.class;
-- same -> inner join
select s.StudentName, c.ClassName from class c inner join student s 
where c.ClassId = s.class;

# outer
# left
select s.*, c.* from class c left outer join student s 
on c.ClassId = s.class;
# right
-- 右
select s.*, c.* from class c right outer join student s 
on c.ClassId = s.class;

# self
select c2.*, c.* from class c right outer join class c2 
on c.ClassId = c2.classId;

# union (all)
SELECT * FROM class where ClassId>2
UNION ALL
SELECT * FROM class where ClassName in ("MATH");

SELECT * FROM class where ClassId>2
UNION
SELECT * FROM class where ClassName in ("MATH");

