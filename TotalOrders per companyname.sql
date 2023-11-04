SELECT Customers.CompanyName, COUNT(Orders.OrderID) AS TotalOrders
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CompanyName
ORDER BY TotalOrders DESC;