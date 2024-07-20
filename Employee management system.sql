create database Employee;
use Employee;
CREATE TABLE Login (
    Login_id INT PRIMARY KEY,
    Login_user VARCHAR(255),
    Login_password VARCHAR(255),
    Login_roll_id INT
);
CREATE TABLE Employee (
    E_id INT PRIMARY KEY,
    E_firstname VARCHAR(255),
    E_fathername VARCHAR(255),
    E_education VARCHAR(255),
    E_designation VARCHAR(255),
    E_Address VARCHAR(255),
    E_DOB DATE,
    E_Adhar_no VARCHAR(255),
    E_mail_id VARCHAR(255)
);
-- Table for Permissions
CREATE TABLE Permissions (
    Permission_id INT PRIMARY KEY,
    Add_Employee BOOLEAN,
    Update_Employee BOOLEAN,
    Remove_E BOOLEAN,
    View_E BOOLEAN,
    Login_id INT,
    FOREIGN KEY (Login_id) REFERENCES Login(Login_id)
);
CREATE TABLE Salary (
    Salary_id INT PRIMARY KEY,
    E_Salary DECIMAL(10, 2),
    Salary_mnth VARCHAR(255),
    Salary_date DATE,
    Salary_desc VARCHAR(255),
    Emp_DOB DATE,
    E_id INT,
    FOREIGN KEY (E_id) REFERENCES Employee(E_id)
);
CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Title VARCHAR(255),
    Dept_designation VARCHAR(255)
);