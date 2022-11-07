/*
索引是帮助 MySQL 高效获取数据的数据结构（有序）。在数据之外，数据库系统还维护着满足特定查找算法的数据结构，这些数据结构以某种方式引用（指向）数据，这样就可以在这些数据结构上实现高级查询算法，这种数据结构就是索引。

优点：
提高数据检索效率，降低数据库的IO成本
通过索引列对数据进行排序，降低数据排序的成本，降低CPU的消耗
缺点：

索引列也是要占用空间的
索引大大提高了查询效率，但降低了更新的速度，比如 INSERT、UPDATE、DELETE
索引结构
索引结构	描述
B+Tree	最常见的索引类型，大部分引擎都支持B+树索引
Hash	底层数据结构是用哈希表实现，只有精确匹配索引列的查询才有效，不支持范围查询
R-Tree(空间索引)	空间索引是 MyISAM 引擎的一个特殊索引类型，主要用于地理空间数据类型，通常使用较少
Full-Text(全文索引)	是一种通过建立倒排索引，快速匹配文档的方式，类似于 Lucene, Solr, ES
索引	InnoDB	MyISAM	Memory
B+Tree索引	支持	支持	支持
Hash索引	不支持	不支持	支持
R-Tree索引	不支持	支持	不支持
Full-text	5.6版本后支持	支持	不支持


为什么 InnoDB 存储引擎选择使用 B+Tree 索引结构？
相对于二叉树，层级更少，搜索效率高
对于 B-Tree，无论是叶子节点还是非叶子节点，都会保存数据，这样导致一页中存储的键值减少，指针也跟着减少，要同样保存大量数据，只能增加树的高度，导致性能降低
相对于 Hash 索引，B+Tree 支持范围匹配及排序操作
*/
-- name字段为姓名字段，该字段的值可能会重复，为该字段创建索引
create index idx_user_name on tb_user(name);
-- phone手机号字段的值非空，且唯一，为该字段创建唯一索引
create unique index idx_user_phone on tb_user (phone);
-- 为profession, age, status创建联合索引
create index idx_user_pro_age_stat on tb_user(profession, age, status);
-- 为email建立合适的索引来提升查询效率
create index idx_user_email on tb_user(email);

-- 删除索引  
drop index idx_user_email on tb_user;  