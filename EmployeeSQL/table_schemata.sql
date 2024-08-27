DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


CREATE TABLE departments (
  dept_no varchar(100)  NOT NULL,
  dept_name Varchar(1000) NOT NULL,
  PRIMARY KEY (dept_no)
);

CREATE TABLE titles (
  title_id varchar(100) NOT NULL,
  title Varchar(100),
  PRIMARY KEY (title_id)
); 

CREATE TABLE employees (
  emp_no int NOT NULL,
  emp_title_id varchar(100),
  birth_date date,
  first_name Varchar(100) NOT NULL,
  last_name Varchar(100) NOT NULL,
  sex Varchar(10) NOT NULL,
  hire_date date,
  PRIMARY KEY (emp_no),
  FOREIGN KEY (emp_title_id)REFERENCES titles(title_id)
  );
  
CREATE TABLE dept_emp (
  emp_no int NOT NULL,
  dept_no varchar(100) NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
  dept_no varchar(100) NOT NULL,
  emp_no int NOT NULL,
  FOREIGN KEY (dept_no)REFERENCES departments(dept_no),
  FOREIGN KEY (emp_no)REFERENCES employees(emp_no)
);

 CREATE TABLE salaries (
  salary_id SERIAL, 
  emp_no int NOT NULL,
  salary int NOT NULL,
  PRIMARY KEY (salary_id),
  FOREIGN KEY (emp_no)REFERENCES employees(emp_no)
); 
