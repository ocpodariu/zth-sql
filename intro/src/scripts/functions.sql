// ----- 1. Get current date & time
SELECT sysdate FROM dual;



// ----- 2.	Format sysdate with TO_CHAR function.
SELECT TO_CHAR(sysdate, 'dd-MM-yyyy') from dual;



// ----- 3.	Return a date from a varchar2 field
SELECT TO_CHAR(TO_DATE('25-11-2014', 'dd-MM-yyyy'), 'dd-MM-yyyy') FROM dual;



// ----- 4.	Return all employees First Name, with Upper case and Email with Lower case
SELECT UPPER(first_name) "First Name", LOWER(email) "Email"
  FROM employees;



// ----- 5.	Return all employees First Name with the prefix “First Name: ” (use concat function).
// -----    After this, do the same using || operator
SELECT CONCAT('First Name: ', first_name) "First Name"
  FROM employees;

SELECT ('First Name: ' || first_name) "First Name"
FROM employees;



// ----- 6.	Use the Count function: return the total number of employees.
SELECT COUNT(*) "Total nr. of employees"
  FROM employees;



// ----- 7.	Return the number of employees with job IT_PROG
SELECT COUNT(*) "Total nr. of IT_PROG"
  FROM employees
  WHERE job_id = 'IT_PROG';



// ----- 8.	Return the number of employees for each department (count + group by)
SELECT department_id, COUNT(*) "Nr. of employees per dept."
  FROM employees
  WHERE department_id IS NOT NULL
  GROUP BY department_id
  ORDER BY 2 DESC;



// ----- 9.	Return the total salary for all employees in department 50 (use the SUM function)
SELECT SUM(salary) "Total salary of dept. 50"
  FROM employees
  WHERE department_id = 50;



// ----- 10.	Return max, min salary from employees in department 50.
SELECT MAX(salary) "Maximum salary in dept 50", MIN(salary) "Minimum salary in dept 50"
FROM employees
WHERE department_id = 50;