
create table Departments (
	dept_no varchar(10) primary key,
	dept_name varchar(30)
);

create table Employees (
	emp_no integer primary key,
	birth_date date,
	first_name varchar(30),
	last_name varchar(30),
	gender varchar(1),
	hire_date date
);

create table Dept_Employee (
	emp_no integer, 
	dept_no varchar(10),
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

create table Titles (
	emp_no integer,
	title varchar,
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

create table Salaries (
	emp_no integer,
	salary integer,
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);


create table Dept_Manager (
	dept_no varchar(10), 
	emp_no integer, 
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);



















