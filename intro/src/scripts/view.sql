CREATE VIEW emp_dep_view AS
  SELECT first_name, last_name, department_name
  FROM employees e, departments d
  WHERE e.department_id = d.department_id;


SELECT * FROM emp_dep_view;