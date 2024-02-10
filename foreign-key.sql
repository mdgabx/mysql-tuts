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

#SHOW DATABASES;
#USE company_db;

#CREATE TABLE branch_supplier(
#	branch_id INT,
#    supplier_name VARCHAR(40),
#    supply_type VARCHAR(40),
#    PRIMARY KEY(branch_id, supplier_name),
#    FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
#);

#UPDATE employee SET branch_id = 1 WHERE emp_id = 100;

SELECT * FROM works_with;

INSERT INTO company_db.employee VALUES(108, 'Jim', 'Halpert', '1978-10-01', 'M', 71000, 106, 3);

INSERT INTO company_db.branch VALUES(3, 'Stamford', 106, '1998-02-13');

UPDATE company_db.employee SET branch_id = 3 WHERE emp_id = 106;

SELECT * FROM branch_supplier;

INSERT INTO company_db.works_with VALUES(105, 406, 130000);

SELECT * FROM employee;