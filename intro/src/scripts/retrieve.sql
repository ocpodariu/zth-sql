// ----- 1a.	Return all employees
SELECT * FROM employees;

// ----- 1b.	Return all departments
SELECT * FROM departments;

// ----- 1c.	Return all jobs
SELECT * FROM jobs;

// ----- 1d.	Return First Name and Last Name for all employees
SELECT first_name, last_name
  FROM employees;



// ----- 2.	Return all Employees from department 50
SELECT *
  FROM employees
  WHERE department_id = 50;



// ----- 3.	Increase salary by 30% for all employees in department 50 (UPDATE Statement)
UPDATE employees
  SET salary = salary * 1.3
  WHERE department_id = 50;



// ----- 4.	Remove the employee with EMPLOYEE_ID 101 (DELETE Statement)
DELETE FROM employees
  WHERE employee_id = 101;



// ----- 5.	Return all Employees with job IT_PROG, ordered by their First Name.
SELECT *
  FROM employees
  WHERE job_id = 'IT_PROG'
  ORDER BY first_name;



// ----- 6.	Same as 2, but also return the department name in the SELECT clause
SELECT e.*, d.department_name
  FROM employees e, departments d
  WHERE e.department_id = d.department_id
        AND d.department_id = 50;



// ----- 7.	Using an Alias
SELECT COUNT(employee_id)
  FROM employees emp
  WHERE emp.JOB_ID = 'IT_PROG';



// ----- 8.	Return all Employees from Seattle (location_id = 1700);
SELECT *
  FROM employees e, departments d
  WHERE e.department_id = d.department_id
        AND d.location_id = (SELECT location_id
                             FROM locations
                             WHERE LOWER(city) = 'seattle');