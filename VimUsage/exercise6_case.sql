SELECT employeeNumber AS ID, CONCAT(firstname, ' ', lastName) AS Name,

CASE
  WHEN (SELECT COUNT(*) FROM customers WHERE customers.salesRepEmployeeNumber = employees.employeeNumber) <> 0 THEN
  
  CASE
      WHEN (SELECT COUNT(*) FROM customers WHERE customers.salesRepEmployeeNumber = employees.employeeNumber) < 6 THEN 10
      ELSE 30
  END 

  ELSE 0
END AS Bonus

FROM employees
ORDER BY Bonus DESC;
