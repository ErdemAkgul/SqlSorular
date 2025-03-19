/*
url: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/submissions/1579597938/?envType=study-plan-v2&envId=top-sql-50

Input: 
Employees table:
+----+----------+
| id | name     |
+----+----------+
| 1  | Alice    |
| 7  | Bob      |
| 11 | Meir     |
| 90 | Winston  |
| 3  | Jonathan |
+----+----------+
EmployeeUNI table:
+----+-----------+
| id | unique_id |
+----+-----------+
| 3  | 1         |
| 11 | 2         |
| 90 | 3         |
+----+-----------+
Output: 
+-----------+----------+
| unique_id | name     |
+-----------+----------+
| null      | Alice    |
| null      | Bob      |
| 2         | Meir     |
| 3         | Winston  |
| 1         | Jonathan |
+-----------+----------+

*/

select e.unique_id,  emp.name
from Employees emp
left join EmployeeUNİ e on emp.id = e.id
order by emp.name
