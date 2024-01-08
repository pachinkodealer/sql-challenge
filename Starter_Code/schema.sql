create table departments(
	dept_no varchar(10) primary key,
	dept_name varchar(30) not null
);

Select * from departments;

create table titles(
	title_id varchar(10) primary key,
	title varchar(30) not null
);

Select * from titles;

create table employees(
	emp_no int primary key,
	emp_title_id varchar(6) not null,
	birth_date varchar(11) not null,
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	sex varchar(1) not null,
	hire_date varchar(11) not null,
	foreign key (emp_title_id) references titles(title_id)
);

select * from employees;

create table dept_manager(
	dept_no varchar(5) not null,
	emp_no int primary key not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
)

select * from dept_manager;

create table dept_emp(
	emp_no int primary key not null,
	dept_no varchar(5),
	foreign key (emp_no) references employees(emp_no)
)

select * from dept_emp;

create table salaries(
	emp_no int primary key,
	salary int not null,
	foreign key (emp_no) references employees(emp_no)
)

select * from salaries;
