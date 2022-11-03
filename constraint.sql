/*
约束条件	关键字
主键	PRIMARY KEY
自动增长	AUTO_INCREMENT
不为空	NOT NULL
唯一	UNIQUE
逻辑条件	CHECK
默认值	DEFAULT
*/
# 3 method to create with
create table manager(
	id int primary key auto_increment,
	name varchar(10) not null unique,
	age int check(age > 0 and age < 120),
	status char(1) default '1',
	gender char(1),
    CONSTRAINT unique_status_age UNIQUE (age,status)
);
# add, drop
alter table manager add select_id int not null;
alter table manager add constraint fk_manager_selection_id foreign key(select_id) 
references selection(selectionId);  
ALTER TABLE manager DROP FOREIGN KEY fk_manager_selection_id;

/*
删除/更新行为
行为	说明
NO ACTION	当在父表中删除/更新对应记录时，首先检查该记录是否有对应外键，如果有则不允许删除/更新（与RESTRICT一致）
RESTRICT	当在父表中删除/更新对应记录时，首先检查该记录是否有对应外键，如果有则不允许删除/更新（与NO ACTION一致）
CASCADE	当在父表中删除/更新对应记录时，首先检查该记录是否有对应外键，如果有则也删除/更新外键在子表中的记录
SET NULL	当在父表中删除/更新对应记录时，首先检查该记录是否有对应外键，如果有则设置子表中该外键值为null（要求该外键允许为null）
SET DEFAULT	父表有变更时，子表将外键设为一个默认值（Innodb不支持）
*/
alter table manager add constraint fk_manager_selection_id foreign key(select_id) 
references selection(selectionId)
ON UPDATE SET NULL ON DELETE CASCADE;