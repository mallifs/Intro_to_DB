USE alx_book_store

CREATE TABLE Authors(
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215)
);

CREATE TABLE Books(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130),
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    Foreign Key (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Order_Details(
    orderdetail_id INT AUTO_INCREMENT PRIMARY KEY,
    Order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);


CREATE TABLE Orders(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);


CREATE TABLE Customers(
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT
);