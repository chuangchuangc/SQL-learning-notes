# select
SELECT ClassName CN FROM class;
# delete duplicate
INSERT INTO class VALUES (7,"SPORTS");
SELECT DISTINCT ClassName FROM class;

SELECT * FROM class WHERE ClassName LIKE '/MATH' ESCAPE '/';
# where:
/*
比较运算符	功能
>	大于
>=	大于等于
<	小于
<=	小于等于
=	等于
<> 或 !=	不等于
BETWEEN ... AND ...	在某个范围内（含最小、最大值）
IN(...)	在in之后的列表中的值，多选一
LIKE 模糊匹配（_匹配单个字符，%匹配任意个字符）
IS NULL	是NULL
逻辑运算符	功能
AND 或 &&	并且（多个条件同时成立）
OR 或 ||	或者（多个条件任意一个成立）
NOT 或 !	非，不是
*/

# < , !=, = ...
select * from class where ClassId < 3;

# null
select * from class where ClassName is null;
select * from class where ClassName is not null;

# between, and, or ..
select * from class where ClassId >= 2 and ClassId <= 4;
select * from class where ClassId between 2 and 4; #[a,b]
select * from class where ClassId<5 or ClassName = 'MATH';

# in
select * from class where ClassName in ("MATH","ENGLISH");
# contain 4
select * from class where ClassName like '____';
# last one is H
select * from class where ClassName like '%H';

/*
函数	功能
count	统计数量
max	最大值
min	最小值
avg	平均值
sum	求和
*/

-- group
select count(*) from class group by ClassName;
select className, count(*) from class group by ClassName;
-- avg
select className, avg(classId) from class group by ClassName;
-- where
select className, count(*) from class where ClassName is not null group by ClassName;
-- having
select className, count(*) class_count from class where ClassName is not null
 group by ClassName 
 having class_count >= 2;
 
# asc,desc
SELECT * FROM class ORDER BY classId ASC;
SELECT * FROM class ORDER BY ClassName ASC, classId DESC;

# start, number
SELECT * FROM class LIMIT 0, 3;
SELECT * FROM class LIMIT 3, 3;

-- DQL执行顺序
-- FROM -> WHERE -> GROUP BY -> SELECT -> ORDER BY -> LIMIT