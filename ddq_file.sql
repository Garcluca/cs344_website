--- Drop Tables

DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS menu;
DROP TABLE IF EXISTS orderItems;
DROP TABLE IF EXISTS payments;
DROP TABLE IF EXISTS orders;

-- Table Creation

CREATE TABLE orders (
    id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
    dateOrdered DATE NOT NULL,
    customerID INT,

    FOREIGN KEY(customerID) REFERENCES customer(id)
)

CREATE TABLE payments (
    id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
    customerID INT(11),
    amountPaid DOUBLE NOT NULL,
    datePaid DATE NOT NULL,
    paymentType TEXT NOT NULL,
    
    FOREIGN KEY(customerID) REFERENCES customer(id)
)

--- Insert data into Tables

INSERT INTO orders (dateOrdered)
VALUES ('2021-02-12'),
        ('2020-04-12'),
        ('2021-02-12');

INSERT INTO payments (amountPaid, datePaid, paymentType)
VALUES ('3.21','2021-04-21','CASH'),
        ('9.29','2021-04-21','CREDIT'),
        ('15.29','2021-03-21','CASH');