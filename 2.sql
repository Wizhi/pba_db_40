SELECT TOP 1
    e.Id,
    e.Name,
    SUM(s.Total) TotalAmount
FROM Employee e
JOIN Sale s ON s.EmployeeId = e.Id
GROUP BY e.Id, e.Name
ORDER BY TotalAmount DESC