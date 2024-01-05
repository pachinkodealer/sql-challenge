--1. Employee number, last name, first name, sex, and salary
Select employees.emp_no, employees.first_name, employees.last_name, employees.sex,
salaries.salary
from employees
inner join salaries on
salaries.emp_no = employees.emp_no;

--2. First name, last name, hire date = 1986
select employees.first_name, employees.last_name, employees.hire_date
from employees
where hire_date like '%1986';

--3. manager of each department, department number, department name, employee number, 
--last name, and first name.
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.first_name,
employees.last_name
from employees
inner join dept_manager on
dept_manager.emp_no = employees.emp_no
inner join departments on
departments.dept_no = dept_manager.dept_no;

--4. department number, employee's employee number, last name, first name, and department name.
select dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name,
departments.dept_name
from employees
inner join dept_emp on
dept_emp.emp_no = employees.emp_no
inner join departments on
departments.dept_no = dept_emp.dept_no;

--5. first name, last name, and sex, of each employee first name Hercules and last name begins
-- with the letter B.
select employees.first_name, employees.last_name, employees.sex
from employees
where first_name like 'Hercules' and last_name like 'B%';

--6. list employees in sales department, include their employee number, last name, and first name.
select employees.emp_no, employees.last_name, employees.first_name
from employees
inner join dept_emp on
dept_emp.emp_no = employees.emp_no
inner join departments on
departments.dept_no = dept_emp.dept_no
where departments.dept_name like 'Sales';

--7. list employees in respective sales and development departments,
-- include their employee number, department name, last name, and first name.
select employees.emp_no, employees.last_name, employees.first_name,
departments.dept_name
from employees
inner join dept_emp on
dept_emp.emp_no = employees.emp_no
inner join departments on
departments.dept_no = dept_emp.dept_no
where departments.dept_name like 'Sales' or departments.dept_name like 'Development';

--8. count, in descending order, all employee last names.
select last_name, count(*)
from employees
group by last_name
having count(*) > 1
order by count(*) desc;



