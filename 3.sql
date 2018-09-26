DECLARE @start; -- Assume set by caller
DECLARE @end; -- Assume set by caller

-- Assume WORKDAYS calculates number of workdays in a given interval

SELECT ol.*
FROM Order o
JOIN OrderLine ol ON ol.OrderId = o.Id
WHERE o.Ordered BETWEEN @start AND @end 
  AND WORKDAYS(o.Ordered, o.Departed) > 3