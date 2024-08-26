Select * from employees;
select * from departments;
select * from salaries;
select * from dept_emp;
select * from dept_manager;
select* from titles;

---Q1----
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e 
join salaries as s 
on e.emp_no = s.emp_no
order by e.emp_no;

---Q2-----
select first_name,last_name,hire_date
from employees
where RIGHT(hire_date, 2) ='86'
order by first_name;

----Q3----
Select dm.dept_no as department_No,d.dept_name as department_name,dm.emp_no as employee_No,e.last_name,e.first_name
from employees as e 
left join dept_manager as dm
on e.emp_no = dm.emp_no
join departments as d 
on dm.dept_no = d.dept_no
order by dm.dept_no;

----Q4----
select de.dept_no,e.emp_no,e.last_name,e.first_name,d.dept_name
from employees as e
join dept_emp as de
on e.emp_no = de.emp_no
join departments as d 
on de.dept_no = d. dept_no 
order by d.dept_no, e.emp_no;

----Q5----
select first_name,last_name,sex
from employees 
where first_name = 'Hercules' and last_name like 'B%'
order by first_name,last_name;

----Q6----
select de.emp_no,e.last_name,e.first_name
from employees as e 
join dept_emp as de
on e.emp_no = de.emp_no 
join departments as d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales'
order by de.emp_no;

----Q7----
select de.emp_no,e.last_name,e.first_name, d.dept_name
from employees as e 
join dept_emp as de
on e.emp_no = de.emp_no 
join departments as d
on de.dept_no = d.dept_no
where d.dept_name in ('Sales','Development')
order by de.emp_no;

----Q8-----
select last_name, count(last_name) as frequency_counts
from employees
group by last_name
order by frequency_counts DESC















































