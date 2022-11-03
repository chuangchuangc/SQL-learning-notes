# sub  
select * from student where class = (select classid from class where classname = 'HISTORY');  

# column/row
/*
操作符	描述
IN	在指定的集合范围内，多选一
NOT IN	不在指定的集合范围内
ANY	子查询返回列表中，有任意一个满足即可
SOME	与ANY等同，使用SOME的地方都可以使用ANY
ALL	子查询返回列表的所有值都必须满足
*/
select * from student where class in (select classid from class where classname in ('HISTORY','SPORTS'));  
-- all
select * from student where class > all (select classid from class where classname in ('HISTORY','SPORTS')); 
-- any
select * from student where class > any (select classid from class where classname in ('HISTORY','SPORTS')); 

# row
select * from student where (StudentName, class) = ("A", 4);  

# table
select * from student where (StudentName, class) in 
(select StudentName, class from student where studentname = 'B' or studentname = 'A');
-- with class
select s.*, c.* from (select * from class where className = 'HISTORY') as c left join student as s on c.ClassId = s.class;