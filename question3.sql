CREATE TABLE Departments (
      department_id INT PRIMARY KEY,
      department_name VARCHAR(100)
    );

CREATE TABLE Employees (
      employee_id INT PRIMARY KEY,
      name VARCHAR(100),
      age INT,
      department_id INT,
      FOREIGN KEY (department_id) REFERENCES Departments(department_id)
    );

SELECT DISTINCT department_name
FROM Departments;

SELECT Departments.department_name, COUNT(Employees.employee_id) AS total_employees
FROM Departments
JOIN Employees ON Departments.department_id = Employees.department_id
GROUP BY Departments.department_name;

SELECT name, age, department_id
FROM Employees
WHERE age BETWEEN 25 AND 30;
