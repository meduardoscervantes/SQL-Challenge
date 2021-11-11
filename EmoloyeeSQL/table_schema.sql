CREATE TABLE departments(
	dept_no VARCHAR(32),
	dept_name VARCHAR(32)
);

CREATE TABLE dept_emp(
	emp_no int,
	dept_no VARCHAR(32)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(32),
	emp_no int
);

CREATE TABLE employees(
	emp_no int,
	emp_title VARCHAR(32),
	birth_date DATE,
	first_name VARCHAR(32),
	last_name VARCHAR(32),
	sex VARCHAR(32),
	hite_date DATE
);

CREATE TABLE salaries(
	emp_no int,
	salary int
);

CREATE TABLE titles(
	title_id VARCHAR(32),
	title VARCHAR(32)
);