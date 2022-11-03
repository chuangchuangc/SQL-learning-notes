# add
use CoursesSelectionSystem;
alter table student add address varchar(20);
# change
AlTER TABLE student CHANGE address tmp_address varchar(30);
# drop
ALTER TABLE student DROP tmp_address;
# delete and re-create
TRUNCATE TABLE coursesselectionsystem;

