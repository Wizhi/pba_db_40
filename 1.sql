-- Product details are duplicated to order lines, as we must assume these may
-- change after the order has been made

SELECT DISTINCT c.*
FROM Customer c
JOIN Order o ON o.CustomerId = c.Id
JOIN OrderLine ol ON ol.OrderId = o.Id
WHERE ol.ProductName <> 'varex';
