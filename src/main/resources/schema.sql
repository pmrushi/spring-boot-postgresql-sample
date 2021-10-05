CREATE TABLE employee (
    id SERIAL PRIMARY KEY NOT NULL ,
    employee_id varchar(11) NOT NULL ,
    employee_name varchar(100) NOT NULL,
    employee_address varchar(100) DEFAULT NULL,
    employee_email varchar(100) DEFAULT NULL
);

-- insert into employee(id, employee_id, employee_name , employee_address, employee_email) values(3, 'E001','Jack','USA','jack@gmail.com');