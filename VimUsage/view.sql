CREATE VIEW EmployeeStatus AS
SELECT e.officeCode, firstName, city
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;
