SELECT c.*
FROM Customer c
JOIN Order o ON o.CustomerId = c.Id
WHERE o.Departed IS NULL;