DECLARE @orderId; -- Assume set by caller

-- Assume product gross weight never changes

SELECT SUM(p.GrossWeight * ol.Quantity) TotalWeight
FROM Order o
JOIN OrderLine ol ON ol.OrderId = o.Id 
JOIN Product p ON p.Id = ol.ProductId
WHERE o.Id = @orderId;