CREATE TABLE departments(
	dept_no VARCHAR(32) PRIMARY KEY,
	dept_name VARCHAR(32)
);

CREATE TABLE titles(
	title_id VARCHAR(32) PRIMARY KEY,
	title VARCHAR(32)
);

CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title VARCHAR(32),
	FOREIGN KEY (emp_title) REFERENCES titles(title_id),
	birth_date VARCHAR(32),
	first_name VARCHAR(32),
	last_name VARCHAR(32),
	sex VARCHAR(32),
	hire_date VARCHAR(32)
);

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR(32),
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(32),
	emp_no INT,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);