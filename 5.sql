DECLARE @start; -- Assume set by caller
DECLARE @end; -- Assume set by caller

-- Assume WORKDAYS calculates number of workdays in a given interval

SELECT TOP 5
    c.Id,
    SUM(ol.Quantity)
FROM Customer c
JOIN Order o ON o.CustomerId = c.Id
JOIN OrderLine ol ON ol.OrderId = o.Id
GROUP BY c.Id
WHERE o.Ordered BETWEEN @start AND @end;