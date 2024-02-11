SELECT * FROM employee WHERE birth_date LIKE '____-10%';


SELECT first_name AS company_names
FROM employee
UNION
SELECT branch_name 
FROM branch
UNION
SELECT client_name
FROM client;


// show all company spent
SELECT total_sales
FROM works_with
UNION
SELECT salary
FROM employee;

// joining
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;