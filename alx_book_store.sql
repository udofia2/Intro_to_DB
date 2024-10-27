
CREATE DATABASE alx_book_store;

USE alx_book_store;

CREATE TABLE Authors (
  AUTHOR_ID INT AUTO_INCREMENT,
  AUTHOR_NAME VARCHAR(215) NOT NULL,
  PRIMARY KEY (AUTHOR_ID)
);


CREATE TABLE Books (
  BOOK_ID INT AUTO_INCREMENT,
  TITLE VARCHAR(130) NOT NULL,
  AUTHOR_ID INT,
  PRICE DOUBLE NOT NULL,
  PUBLICATION_DATE DATE NOT NULL,
  PRIMARY KEY (BOOK_ID),
  FOREIGN KEY (AUTHOR_ID) REFERENCES Authors(AUTHOR_ID)
);


CREATE TABLE Customers (
  CUSTOMER_ID INT AUTO_INCREMENT,
  CUSTOMER_NAME VARCHAR(215) NOT NULL,
  EMAIL VARCHAR(215) UNIQUE NOT NULL,
  ADDRESS TEXT,
  PRIMARY KEY (CUSTOMER_ID)
);


CREATE TABLE Orders (
  ORDER_ID INT AUTO_INCREMENT,
  CUSTOMER_ID INT,
  ORDER_DATE DATE NOT NULL,
  PRIMARY KEY (ORDER_ID),
  FOREIGN KEY (CUSTOMER_ID) REFERENCES Customers(CUSTOMER_ID)
);


CREATE TABLE Order_Details (
  ORDERDETAILID INT AUTO_INCREMENT,
  ORDER_ID INT,
  BOOK_ID INT,
  QUANTITY DOUBLE NOT NULL,
  PRIMARY KEY (ORDERDETAILID),
  FOREIGN KEY (ORDER_ID) REFERENCES Orders(ORDER_ID),
  FOREIGN KEY (BOOK_ID) REFERENCES Books(BOOK_ID)
);