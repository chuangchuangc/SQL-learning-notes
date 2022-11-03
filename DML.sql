# insert
INSERT INTO class (ClassId) VALUES (1), (2), (3);
INSERT INTO class VALUES (4,"MATH"), (5,"SPORTS");
# update
UPDATE class SET ClassName = 'HISTORY' WHERE ClassId = 4;
# delete
DELETE FROM class WHERE ClassId=3;

insert into student values (1,"A", 4);
insert into student values (2,"B", 4);
insert into student values (3,"B", 5);
insert into student values (4,"B", 5);