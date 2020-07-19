inner join 内连接 在表中存在至少一个匹配时，INNER JOIN 关键字返回行。
JOIN: 如果表中有至少一个匹配，则返回行
LEFT JOIN: 即使右表中没有匹配，也从左表返回所有的行
RIGHT JOIN: 即使左表中没有匹配，也从右表返回所有的行
FULL JOIN: 只要其中一个表中存在匹配，就返回行

SELECT a.column_name(s)
FROM table_name1 a
INNER JOIN table_name2 b
ON a.column_name=b.column_name

SELECT a.emp_no,a.salary,a.from_date,a.to_date,b.dept_no
FROM salaries a 
INNER JOIN dept_manager b
ON a.emp_no=b.emp_no
WHERE a.to_date== '9999-01-01' and b.to_date =='9999-01-01'
ORDER BY a.emp_no 

select a.emp_no,b.salary
from employees a
inner join salaries b
on a.emp_no=b.emp_no and a.hire_date=b.from_date
group by a.emp_no
order by a.emp_no desc


LIMIT m,n : 表示从第m+1条开始，取n条数据；
LIMIT n ： 表示从第0条开始，取n条数据，是limit(0,n)的缩写。

SELECT * FROM employees ORDER BY hire_date DESC LIMIT 0,1;

GROUP BY M ORDER BY DESC

gruop 语句判断条件为having ... 

distinct 去掉重复

select a.dept_no,a.emp_no,b.salary
from dept_manager a
inner join salaries b
on a.emp_no=b.emp_no
where a.to_date='9999-01-01' and b.to_date='9999-01-01'

not in 不在

select a.emp_no
from employees a
where a.emp_no not in 
(
    select b.emp_no
    from dept_manager b
)

select a.emp_no
from employees a
left join dept_manager b 
on a.emp_no=b.emp_no
where b.dept_no isnull



