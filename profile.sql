show profile 
#能在做SQL优化时帮我们了解时间都耗费在哪里。通过 have_profiling 参数，能看到当前 MySQL 是否支持 profile 操作：
SELECT @@have_profiling;
#profiling 默认关闭，可以通过set语句在session/global级别开启 profiling：
SET profiling = 1;
#查看所有语句的耗时：
show profiles;
#查看指定query_id的SQL语句各个阶段的耗时：
show profile for query query_id;
#查看指定query_id的SQL语句CPU的使用情况
show profile cpu for query query_id;