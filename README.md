## Learning PGAdmin and Postres SQL includes 8 solutions. 

![imageAlt](https://github.com/dsalisbury1141/PostgresSQL/blob/master/ERD/Dsalisbury1141%20ERD%20diagram.png)

## ERD Code 
CREATE TABLE "employees" (
  "emp_no" varchar,
  "emp_title_id" varchar,
  "birth_date" date,
  "first_name" varchar(30),
  "last_name" varchar(30),
  "sex" varchar(1),
  "hire_date" date,
  PRIMARY KEY ("emp_no")
);

CREATE INDEX "FK" ON  "employees" ("emp_title_id");

CREATE TABLE "titles" (
  "title_id" varchar,
  "title" varchar(50)
);

CREATE INDEX "PK " ON  "titles" ("title_id");

CREATE TABLE "dept_emp" (
  "emp_no" int,
  "dept_no" varchar
);

CREATE INDEX "FK" ON  "dept_emp" ("emp_no");

CREATE INDEX "PK " ON  "dept_emp" ("dept_no");

CREATE TABLE "salaries" (
  "emp_no" int,
  "salary" int
);

CREATE INDEX "Pk FK" ON  "salaries" ("emp_no");

CREATE TABLE "dept_manager" (
  "dept_no" int,
  "emp_no" int
);

CREATE INDEX "PK " ON  "dept_manager" ("dept_no");

CREATE INDEX "FK" ON  "dept_manager" ("emp_no");

CREATE TABLE "departments" (
  "dept_no" varchar,
  "dept_name" varchar(50),
  PRIMARY KEY ("dept_no")
);

How to run my code:
1. Download Repository 
2. Open PGadmin and import file then run code above
