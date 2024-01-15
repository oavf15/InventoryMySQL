-- Products with low stock (under 50)
SELECT p.Name, p.Description, s.Quantity, s.WarehouseLocation
FROM Products p
JOIN Stock s ON p.ProductID = s.ProductID
WHERE s.Quantity < 50;

-- Orders placed in a specific time period (between 2023-01-01 and 2023-12-31)
SELECT o.OrderID, p.Name, o.Quantity, o.OrderDate, o.Status
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
WHERE o.OrderDate BETWEEN '2023-01-01' AND '2023-12-31';

-- Products by category (e.g. all products in the 'Electronics' category)
SELECT p.ProductID, p.Name, p.Description, p.Price
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.Name = 'Electronics';


-- Top 5 selling products
SELECT p.ProductID, p.Name, p.Description, p.Price, SUM(o.Quantity) AS TotalQuantity
FROM Products p
JOIN Orders o ON p.ProductID = o.ProductID
GROUP BY p.ProductID
ORDER BY TotalQuantity DESC
LIMIT 5;



