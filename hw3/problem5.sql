#1
SELECT DISTINCT customerID
FROM  customers 
WHERE emailAddress LIKE '%gmail.com'
#2
SELECT productID, quantity
FROM orderItems
WHERE orderID = '2'
#3
SELECT p.orderID, p.orderDate
FROM orders p, customers c
WHERE p.customerID = c.customerID AND emailAddress ='christineb@solarone.com'
#4
SELECT c.productID
FROM orders c, customers d, orderItems p
WHERE  c.orderID = p.orderID AND c.customerID = d.customerID AND emailAddress = 'christineb@solarone.com'