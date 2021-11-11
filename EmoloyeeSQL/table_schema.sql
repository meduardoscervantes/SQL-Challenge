CREATE TABLE departments(
	id SERIAL,
	dept_no VARCHAR(32),
	dept_name VARCHAR(32),
	PRIMARY KEY (id)
);

CREATE TABLE dept_emp(
	id SERIAL,
	emp_no int,
	dept_no VARCHAR(32),
	PRIMARY KEY (id)
);

CREATE TABLE dept_manager(
	id SERIAL,
	dept_no VARCHAR(32),
	emp_no int,
	PRIMARY KEY (id)
);

CREATE TABLE employees(
	id SERIAL,
	emp_no int,
	emp_title VARCHAR(32),
	birth_date DATE,
	first_name VARCHAR(32),
	last_name VARCHAR(32),
	sex VARCHAR(32),
	hite_date DATE,
	PRIMARY KEY (id)
);

CREATE TABLE salaries(
	id SERIAL,
	emp_no int,
	salary int,
	PRIMARY KEY (id)

);

CREATE TABLE titles(
	id SERIAL,
	title_id VARCHAR(32),
	title VARCHAR(32),
	PRIMARY KEY (id)
);