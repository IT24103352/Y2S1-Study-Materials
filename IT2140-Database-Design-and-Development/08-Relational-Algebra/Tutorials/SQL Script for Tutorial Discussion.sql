CREATE TABLE Customer (
    CID         INT           NOT NULL PRIMARY KEY,
    name        VARCHAR(50)   NOT NULL,
    gender      CHAR(1)       NOT NULL CHECK (gender IN ('M','F')),
    address     VARCHAR(50)   NOT NULL,
    creditLimit INT           NOT NULL CHECK (creditLimit >= 0)
);

CREATE TABLE Manufacturer (
    MID     CHAR(10)      NOT NULL PRIMARY KEY,
    name    VARCHAR(50)   NOT NULL,
    country VARCHAR(50)   NOT NULL,
    contact CHAR(10)      NOT NULL
);

CREATE TABLE Product (
    PID              VARCHAR(20)  NOT NULL PRIMARY KEY,
    name             VARCHAR(50)  NOT NULL,
    color            VARCHAR(10)  NULL,
    weight           INT          NOT NULL CHECK (weight > 0),      -- grams
    warranty         INT          NOT NULL CHECK (warranty >= 0),   -- years
    unitPrice        INT          NOT NULL CHECK (unitPrice >= 0),
    MID              CHAR(10)     NOT NULL,
    manufacturedDate DATE         NOT NULL,
    CONSTRAINT FK_Product_Manufacturer
        FOREIGN KEY (MID) REFERENCES dbo.Manufacturer(MID)
);

-- NOTE: Order is a reserved word; keep it bracketed.
CREATE TABLE [Order] (
    OID       CHAR(10)   NOT NULL PRIMARY KEY,
    CID       INT        NOT NULL,
    orderDate DATE       NOT NULL,
    CONSTRAINT FK_Order_Customer
        FOREIGN KEY (CID) REFERENCES dbo.Customer(CID)
);

CREATE TABLE OrderItems (
    OID CHAR(10)      NOT NULL,
    PID VARCHAR(20)   NOT NULL,
    qty INT           NOT NULL CHECK (qty > 0),
    CONSTRAINT PK_OrderItems PRIMARY KEY (OID, PID),
    CONSTRAINT FK_OrderItems_Order FOREIGN KEY (OID) REFERENCES dbo.[Order](OID),
    CONSTRAINT FK_OrderItems_Product FOREIGN KEY (PID) REFERENCES dbo.Product(PID)
);

/* ===========================
   Sample data
   =========================== */
INSERT INTO Customer (CID, name, gender, address, creditLimit) VALUES
(1, 'Alice Dupont',  'F', 'Paris, France',           5000),
(2, 'Bob Smith',     'M', 'London, UK',              4000),
(3, 'Fiona Lévy',    'F', 'Lyon, France',            7000),
(4, 'Manoj Perera',  'M', 'Colombo, Sri Lanka',      3000),
(5, 'Priya Kapoor',  'F', 'Mumbai, India',           6000);

INSERT INTO Manufacturer (MID, name, country, contact) VALUES
('MIND01', 'Bharat Devices',  'India',     '0112345678'),
('MUSA01', 'Acme Corp',       'USA',      '0213456789'),
('MCHN01', 'Shenzhen Tech',   'China',    '0312345678'),
('MSLK01', 'LankaTech',       'Sri Lanka','0412345678');

INSERT INTO Product (PID, name, color, weight, warranty, unitPrice, MID, manufacturedDate) VALUES
('P-PHONE-IN-01', 'phone',  'black', 180, 2,  600, 'MIND01', '2025-01-01'),  -- Indian phone
('P-PHONE-US-01', 'phone',  'blue',  190, 2,  550, 'MUSA01', '2025-02-01'),  -- US phone
('P-LAP-01',      'laptop', 'gray', 1500, 3, 1200, 'MUSA01', '2025-03-01'),
('P-CASE-01',     'case',   'red',    50, 1,   20, 'MIND01', '2025-04-01'),
('P-TOAST-01',    'toaster','white',1200, 1,   80, 'MCHN01', '2025-05-01'),
('P-WATCH-01',    'watch',  'black',  60, 2,  200, 'MSLK01', '2025-06-01');

INSERT INTO [Order] (OID, CID, orderDate) VALUES
('O-1001', 1, '2025-09-01'),  -- Alice (France, F)
('O-1002', 2, '2025-09-02'),  -- Bob
('O-1003', 3, '2025-09-03'),  -- Fiona (France, F)
('O-1004', 4, '2025-09-03');  -- Manoj


INSERT INTO OrderItems (OID, PID, qty) VALUES
('O-1001', 'P-PHONE-IN-01', 1),
('O-1001', 'P-CASE-01',     2),
('O-1001', 'P-WATCH-01',    1);


INSERT INTO OrderItems (OID, PID, qty) VALUES
('O-1002', 'P-PHONE-US-01', 5),
('O-1002', 'P-CASE-01',     8);   


INSERT INTO OrderItems (OID, PID, qty) VALUES
('O-1003', 'P-LAP-01', 1);


INSERT INTO OrderItems (OID, PID, qty) VALUES
('O-1004', 'P-TOAST-01', 1),
('O-1004', 'P-WATCH-01', 2);
