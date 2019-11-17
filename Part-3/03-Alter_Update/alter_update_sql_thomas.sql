-- Create table based on image Employees
CREATE TABLE "employees" (
    "employee_id" INT,
    "first_name" VARCHAR,
    "last_name" VARCHAR,
    "department_id" INT);

--display table
select * from employees

-- Alter column name department name to dept_id
ALTER TABLE "employees"
RENAME COLUMN department_id TO dept_id;

--add addtional column to table
ALTER TABLE "employees" 
ADD annual_salary INT;

--display table altered
SELECT * FROM "employees";