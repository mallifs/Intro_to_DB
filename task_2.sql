USE alx_book_store

CREATE TABLE IF NOT EXISTS Authors(
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name  VARCHAR(215)
);


CREATE TABLE IF NOT EXISTS Books(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title  VARCHAR(130),
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE IF NOT EXISTS Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(215) NOT NULL,
    Email VARCHAR(215) NOT NULL,
    Address TEXT
);


CREATE TABLE IF NOT EXISTS Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


CREATE TABLE IF NOT EXISTS Order_Details (
    OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    book_id INT,
    Quantity DOUBLE,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);