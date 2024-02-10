#ALTER TABLE employee 
#ADD FOREIGN KEY(super_id) 
#REFERENCES employee(emp_id)
#ON DELETE SET NULL;

#ALTER TABLE employee
#ADD FOREIGN KEY(branch_id)
#REFERENCES branch(branch_id)
#ON DELETE SET NULL;

#CREATE TABLE client (
#	client_id INT PRIMARY KEY,
#    client_name VARCHAR(40),
#    branch_id INT,
#    FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL
#);

CREATE TABLE works_with (
	emp_id INT,
    client_id INT,
    total_sales INT, 
    PRIMARY KEY(emp_id, client_id),
    FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
    FOREIGN KEY(client_id) REFERENCES client(client_id) ON DELETE CASCADE
);