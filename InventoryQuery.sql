CREATE TABLE IF NOT EXISTS Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(255),
    Description TEXT,
    Price DECIMAL(10, 2),
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

CREATE TABLE IF NOT EXISTS Stock (
    StockID INT PRIMARY KEY,
    ProductID INT,
    Quantity INT,
    WarehouseLocation VARCHAR(255),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE IF NOT EXISTS Suppliers (
    SupplierID INT PRIMARY KEY,
    Name VARCHAR(255),
    ContactInfo VARCHAR(255),
    Address TEXT
);

CREATE TABLE IF NOT EXISTS Orders (
    OrderID INT PRIMARY KEY,
    ProductID INT,
    Quantity INT,
    OrderDate DATE,
    Status VARCHAR(50),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE IF NOT EXISTS Categories (
    CategoryID INT PRIMARY KEY,
    Name VARCHAR(255),
    Description TEXT
);


