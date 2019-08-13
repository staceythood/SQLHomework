select Employees.emp_no, Employees.last_name, Employees.first_name, 
Employees.gender, Salaries.salary
from Employees
inner join Salaries on
Employees.emp_no = Salaries.emp_no;

select * from Employees;

select first_name, last_name, hire_date
from employees
where hire_date 
between '1986-01-01' and '1986-12-31'
;

select Dept_Manager.dept_no, Departments.dept_name, Dept_Manager.emp_no,
Employees.first_name, Employees.last_name, Dept_Manager.from_date, 
Dept_Manager.to_date
from Dept_Manager
join Departments on
Departments.dept_no = Dept_Manager.dept_no
join Employees on
Dept_Manager.emp_no = Employees.emp_no;

select Employees.emp_no, Employees.last_name, Employees.first_name,
Departments.dept_name
from Employees
join Dept_Employee on
Employees.emp_no = Dept_Employee.emp_no
join Departments on
Dept_Employee.dept_no = Dept_Employee.dept_no
group by Departments.dept_no, Employees.emp_no;

select first_name, last_name
from employees
where first_name = 'Hercules' and last_name like 'B%'; 

select Employees.emp_no, Employees.last_name, Employees.first_name,
Departments.dept_name
from Employees
join Dept_Employee on
Employees.emp_no = Dept_Employee.emp_no
join Departments on
Dept_Employee.dept_no = Dept_Employee.dept_no
where Departments.dept_name = 'Sales'
group by Departments.dept_name, Employees.emp_no;

select Employees.emp_no, Employees.last_name, Employees.first_name,
Departments.dept_name
from Employees
join Dept_Employee on
Employees.emp_no = Dept_Employee.emp_no
join Departments on
Dept_Employee.dept_no = Dept_Employee.dept_no
where Departments.dept_name = 'Sales' or 
Departments.dept_name = 'Development'
group by Departments.dept_name, Employees.emp_no;

select last_name, count (last_name)
from employees
group by last_name
order by count(last_name) desc;

