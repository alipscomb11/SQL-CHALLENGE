Select * from Titles

CREATE TABLE Departments (
    Dept_no varchar NOT NULL PRIMARY KEY,
    Dept_name varchar NOT NULL
);

CREATE TABLE Titles (
    Title_id varchar NOT NULL PRIMARY KEY,
    Title varchar NOT NULL
);


CREATE TABLE Employees (
    Emp_no int NOT NULL primary key,
    Emp_title_id varchar NOT NULL,
    Birth_date date NOT NULL,
    First_name varchar NOT NULL,
    Last_name varchar NOT NULL,
    Sex varchar NOT NULL,
    Hire_date date NOT NULL,
    FOREIGN KEY (Emp_title_id) References Titles(Title_id)
);
	
CREATE TABLE Dept_Emp (
    Emp_no int NOT NULL,
	FOREIGN KEY (Emp_no) References Employees(Emp_no),
    Dept_no varchar NOT NULL,
	FOREIGN KEY (Dept_no) References Departments(Dept_no),
	primary key (Dept_no, Emp_no)
);

CREATE TABLE Dept_Manager (
    Dept_no varchar NOT NULL,
	FOREIGN KEY (Dept_no) References Departments(Dept_no),
    Emp_no int NOT NULL,
	FOREIGN KEY (Emp_no) References Employees(Emp_no),
	primary key (Dept_no, Emp_no)
);


CREATE TABLE Salaries (
    Emp_no int NOT NULL,
	FOREIGN KEY (Emp_no) References Employees(Emp_no),
    Salary int NOT NULL
);


