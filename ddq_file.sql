--- Drop Tables

DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS menu;
DROP TABLE IF EXISTS orderItems;
DROP TABLE IF EXISTS payments;
DROP TABLE IF EXISTS orders;

--Create Tables

CREATE TABLE orders (
    id INT(11) NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
    dateOrdered DATE NOT NULL,
    CONSTRAINT `customerID` FOREIGN KEY (customerID) REFERENCES customer (id)
)

CREATE TABLE payments (
    id INT(11) NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
    amountPaid DOUBLE NOT NULL,
    datePaid DATE NOT NULL,
    paymentType VARCHAR(255) NOT NULL
    
    CONSTRAINT `orderID` FOREIGN KEY (orderID) REFERENCES order (id)
)