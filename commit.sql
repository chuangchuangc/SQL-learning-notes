-- 查看事务提交方式
-- 原子性(Atomicity)：事务是不可分割的最小操作但愿，要么全部成功，要么全部失败
-- 一致性(Consistency)：事务完成时，必须使所有数据都保持一致状态
-- 隔离性(Isolation)：数据库系统提供的隔离机制，保证事务在不受外部并发操作影响的独立环境下运行
-- 持久性(Durability)：事务一旦提交或回滚，它对数据库中的数据的改变就是永久的
use coursesselectionsystem;
SELECT @@AUTOCOMMIT;
-- 设置事务提交方式，1为自动提交，0为手动提交，该设置只对当前会话有效
SET @@AUTOCOMMIT = 0;
-- 提交事务
COMMIT;
-- 回滚事务
ROLLBACK;
-- 设置手动提交后上面代码改为：
select * from student where studentname = 'A';  
SET SQL_SAFE_UPDATES = 0; 
update student set Class = Class +1 where studentname = 'A';  
update student set class = class - 1 where studentname = 'A';  
commit;  