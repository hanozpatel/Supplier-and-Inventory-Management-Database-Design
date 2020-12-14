DROP DATABASE IF EXISTS FinalProjectHydra;
CREATE DATABASE FinalProjectHydra;
USE FinalProjectHydra;

create master key encryption by 
password ='hydra123@';

-- -----------------------------------------------------
-- Table `mydb`.`ZipCode`
-- -----------------------------------------------------
CREATE TABLE dbo.ZipCode (
  [ZipCode] CHAR(5) NOT NULL,
  [City] VARCHAR(45) NOT NULL,
  [State] CHAR(2) NOT NULL,
  PRIMARY KEY ([ZipCode]))
;


-- -----------------------------------------------------
-- Table `dbo`.`Consumer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS dbo.Consumer;
CREATE TABLE dbo.Consumer (
  [ConsumerID] INT NOT NULL,
  [ConsumerFName] VARCHAR(45) NOT NULL,
  [ConsumerLName] VARCHAR(45) NOT NULL,
  [DOB] DATE check(DATEDIFF(year,DOB,getdate())>13),
  [StreetAddress] VARCHAR(45),
  [ZipCode] CHAR(5) NOT NULL,
  [PhoneNo] VARCHAR(20) NOT NULL,
  [ConsumerEmail] VARCHAR(45) NOT NULL,
  [ConsumerUsername] VARCHAR(45) NOT NULL,
  [LoginPassword] VARBINARY(160) NOT NULL,
  PRIMARY KEY ([ConsumerID]),
  CONSTRAINT [C_FK1]
    FOREIGN KEY ([ZipCode])
    REFERENCES dbo.ZipCode ([ZipCode])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

---creatting a certificate for loginpassword
create  certificate Password_Ency1
 with subject ='Login details';

 create symmetric key SSN_Key_01
 with Algorithm = AES_256
 encryption by certificate Password_Ency1;


-- -----------------------------------------------------
-- Table `dbo`.`Shipper`
-- -----------------------------------------------------
DROP TABLE IF EXISTS dbo.Shipper;
CREATE TABLE dbo.Shipper (
  [ShipperID] INT NOT NULL,
  [ShipperName] VARCHAR(45) NULL,
  [ShipperContact] VARCHAR(45) NULL,
  PRIMARY KEY ([ShipperID]))
;


-- -----------------------------------------------------
-- Table `dbo`.`[Order]`
-- -----------------------------------------------------
DROP TABLE IF EXISTS dbo.[Order];
CREATE TABLE dbo.[Order] (
  [OrderID] INT NOT NULL,
  [ConsumerID] INT NOT NULL,
  [ShipperID] INT NOT NULL,
  PRIMARY KEY ([OrderID]),
  CONSTRAINT [FK1]
    FOREIGN KEY ([ConsumerID])
    REFERENCES dbo.Consumer ([ConsumerID])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT [FK2]
    FOREIGN KEY ([ShipperID])
    REFERENCES dbo.Shipper ([ShipperID])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE INDEX FK1_idx ON dbo.[Order] ([ConsumerID] ASC) 

CREATE INDEX FK2_idx ON dbo.[Order] ([ShipperID] ASC) 


-- -----------------------------------------------------
-- Table `dbo`.`Category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS dbo.Category;
CREATE TABLE dbo.Category (
  [CategoryID] INT NOT NULL,
  [CategoryName] VARCHAR(45) NOT NULL,
  [CategoryDescription] VARCHAR(45) NULL,
  [CategoryPortal] VARCHAR(45) NOT NULL,
  PRIMARY KEY ([CategoryID]))
;


-- -----------------------------------------------------
-- Table `dbo`.`Product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS dbo.Product;
CREATE TABLE dbo.Product (
  [ProductID] INT NOT NULL,
  [ProductName] VARCHAR(45) NOT NULL,
  [ProductDescription] VARCHAR(45) NULL,
  [UnitPrice] FLOAT NOT NULL,
  [CategoryID] INT NOT NULL,
  [UnitInStock] INT NULL,
  [AvgRating] FLOAT NULL,
  PRIMARY KEY ([ProductID]),
  CONSTRAINT [ProductFK1]
    FOREIGN KEY ([CategoryID])
    REFERENCES dbo.Category ([CategoryID])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE INDEX ProductFK1_idx ON dbo.Product ([CategoryID] ASC)


-- -----------------------------------------------------
-- Table `dbo`.`OrderDetails`
-- -----------------------------------------------------
DROP TABLE IF EXISTS dbo.OrderDetails;
CREATE TABLE dbo.OrderDetails (
  [OrderID] INT NULL,
  [ProductID] INT NULL,
  [Quantity] INT NULL,
  [OrderDate] DATE NOT NULL,
  CONSTRAINT [ODFK1]
    FOREIGN KEY ([OrderID])
    REFERENCES dbo.[Order] ([OrderID])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT [ODFK2]
    FOREIGN KEY ([ProductID])
    REFERENCES dbo.Product ([ProductID])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE INDEX ODFK1_idx ON dbo.[OrderDetails] ([OrderID] ASC)

CREATE INDEX ODFK2_idx ON dbo.[OrderDetails] ([ProductID] ASC)


-- -----------------------------------------------------
-- Table `dbo`.`Supplier`
-- -----------------------------------------------------
DROP TABLE IF EXISTS dbo.Supplier;
CREATE TABLE dbo.Supplier (
  [SupplierID] INT NOT NULL,
  [SupplierName] VARCHAR(45) NULL,
  [ContactTitle] VARCHAR(45) NULL,
  [ContactName] VARCHAR(45) NULL,
  [SupplierPhone] VARCHAR(45) NOT NULL,
  PRIMARY KEY ([SupplierID]))
;


-- -----------------------------------------------------
-- Table `dbo`.`ProductReceiving`
-- -----------------------------------------------------
DROP TABLE IF EXISTS dbo.ProductReceiving;
CREATE TABLE dbo.ProductReceiving (
  [ProductID] INT NOT  NULL,
  [SupplierID] INT NULL,
  [DateReceived] DATE NULL,
  CONSTRAINT [PRFK1]
    FOREIGN KEY ([ProductID])
    REFERENCES dbo.Product ([ProductID])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT [PRFK2]
    FOREIGN KEY ([SupplierID])
    REFERENCES dbo.Supplier ([SupplierID])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE INDEX PRFK1_idx ON dbo.ProductReceiving ([ProductID] ASC)

CREATE INDEX PRFK2_idx ON dbo.ProductReceiving ([SupplierID] ASC)


-- -----------------------------------------------------
-- Table `dbo`.`Invoice`
-- -----------------------------------------------------
DROP TABLE IF EXISTS dbo.Invoice;
CREATE TABLE dbo.Invoice (
  [InvoiceID] INT NOT NULL,
  [InvoiceDate] DATE NULL,
  [ConsumerID] INT NULL,
  [InvoiceAmt] FLOAT NULL,
  PRIMARY KEY ([InvoiceID]),
  CONSTRAINT [InvoiceFK]
    FOREIGN KEY ([ConsumerID])
    REFERENCES dbo.Consumer ([ConsumerID])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE INDEX InvoiceFK_idx ON dbo.Invoice ([ConsumerID] ASC)


-- -----------------------------------------------------
-- Table `dbo`.`Payment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS dbo.Payment;
CREATE TABLE dbo.Payment (
  [PaymentID] INT NOT NULL,
  [InvoiceID] INT NULL,
  [CardType] VARCHAR(45)
  CONSTRAINT CardType_CHK 
	CHECK ( CardType IN ( 'CREDIT','DEBIT','ATM CARD','FOREX') ),
  [CardDetails] VARCHAR(45) NULL,
  PRIMARY KEY ([PaymentID]),
  CONSTRAINT [PaymentFK]
    FOREIGN KEY ([InvoiceID])
    REFERENCES dbo.Invoice ([InvoiceID])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;


-- -----------------------------------------------------
-- Table `dbo`.`LeaderBoard`
-- -----------------------------------------------------
DROP TABLE IF EXISTS dbo.LeaderBoard;
CREATE TABLE dbo.LeaderBoard (
  [LeaderBoardID] INT NOT NULL,
  [Score] INT NULL,
  [HoursPlayed] FLOAT NULL,
  PRIMARY KEY ([LeaderBoardID]))
;


-- -----------------------------------------------------
-- Table `dbo`.`LeaderBoardDetails`
-- -----------------------------------------------------
DROP TABLE IF EXISTS dbo.LeaderBoardDetails;
CREATE TABLE dbo.LeaderBoardDetails (
  [LeaderBoardID] INT NULL,
  [ConsumerID] INT NULL,
  CONSTRAINT [LDFK1]
    FOREIGN KEY ([ConsumerID])
    REFERENCES dbo.Consumer ([ConsumerID])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT [LDFK2]
    FOREIGN KEY ([LeaderBoardID])
    REFERENCES dbo.LeaderBoard ([LeaderBoardID])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE INDEX LDFK1_idx ON dbo.LeaderBoardDetails ([ConsumerID] ASC)

CREATE INDEX LDFK2_idx ON dbo.LeaderBoardDetails ([LeaderBoardID] ASC)
-- -----------------------------------------------------
-- STORED PROCEDURE 1 - GET SUPPLIER
-- -----------------------------------------------------
DROP PROCEDURE IF EXISTS GetSupplier
CREATE PROCEDURE GetSupplier @product_name VARCHAR(45) AS

BEGIN

SELECT s.SupplierID, s.SupplierName,s.ContactName, s.SupplierPhone
FROM  ((dbo.Supplier s
INNER JOIN dbo.ProductReceiving pr ON s.SupplierID = pr.SupplierID)
INNER JOIN dbo.Product p ON p.ProductID = pr.ProductID)
WHERE @product_name = p.ProductName

END;

Exec GetSupplier 'CANNON'

-- -----------------------------------------------------
-- STORED PROCEDURE 2 - GET QUANTITY SOLD
-- -----------------------------------------------------
DROP PROCEDURE IF EXISTS GetQuantitySold
CREATE PROCEDURE GetQuantitySold @product_name VARCHAR(45) AS

BEGIN

SELECT sum(od.Quantity) AS QuantitySold
FROM  dbo.[OrderDetails] od, dbo.Product p
WHERE p.ProductID = od.ProductID AND @product_name = p.ProductName

END;

EXEC GetQuantitySold 'PRIME DEVICES'

-- -----------------------------------------------------
-- STORED PROCEDURE 3 - GET HOLDING COST
-- -----------------------------------------------------
drop procedure if exists holdingcosts
CREATE PROCEDURE HoldingCosts @product_name varchar(45), @totalholdcost int OUTPUT
as 
declare @totalcost int
BEGIN 

SELECT @totalcost=(p.UnitInStock * p.UnitPrice) 
From dbo.Product p
where @product_name = p.ProductName
set @totalholdcost = @totalcost
end
declare @thc int;

exec HoldingCosts 'PS CONTROLLER' , @thc output
print concat('The holding cost of asked product is ' ,@thc)

-- -----------------------------------------------------
-- VIEW 1 - SALES PRODUCT INFO
-- -----------------------------------------------------
CREATE VIEW sales_product_info
AS
SELECT
    p.ProductName,
	c.CategoryName,
    p.UnitPrice
FROM
    dbo.product p
INNER JOIN Category c 
        ON c.CategoryID = p.CategoryID;

SELECT * FROM sales_product_info

-- -----------------------------------------------------
-- VIEW 2 - QUANTITY
-- -----------------------------------------------------
CREATE VIEW	GetQuantity
AS
select p.ProductName,p.UnitInStock, pr.DateReceived
from dbo.Product p, dbo.ProductReceiving pr
where pr.DateReceived = (select max(dbo.ProductReceiving.DateReceived) from dbo.ProductReceiving)

SELECT * FROM GetQuantity

-- -----------------------------------------------------
-- TRIGGER
-- -----------------------------------------------------
Create table NewInternalOrder 
(NewOrderID int not null,
messsage varchar(400))


CREATE TRIGGER INTERNALORDER
ON dbo.[Order]
FOR 
INSERT
AS 
BEGIN
 Declare @NewOrderID int 
 Select  @NewOrderID = OrderId from inserted

 insert into NewInternalOrder values (@NewOrderID,'New order is placed with order Id =  '+cast(@NewOrderID as nvarchar(5)) + 'at ' +cast(getdate() as nvarchar(20))) 


 End

 -- -----------------------------------------------------
-- COMPUTED COLUMN WITH FUNCTION 1
-- -----------------------------------------------------
DROP FUNCTION IF EXISTS Performance
CREATE FUNCTION Performance 
(
@LeaderboardID INT 
)
RETURNs FLOAT 
AS
BEGIN 
DECLARE @Perf float
SELECT @Perf =(LB.Score)/(LB.HoursPlayed)
FROM dbo.LeaderBoard lb
WHERE LeaderboardID = @leaderboardID 


RETURN @Perf
 END
 Select dbo.performance (910)

 Alter table Leaderboard 
Add ScorePerHour as dbo.Performance(LeaderBoardID)
 
--SELECT * FROM leaderboard

 -- -----------------------------------------------------
-- FUNCTION
-- -----------------------------------------------------
DROP FUNCTION IF EXISTS Getcost
CREATE FUNCTION GetCost 
(
@orderID int
)
RETURNS int 
AS
BEGIN 
DECLARE @totalcost int
SELECT @totalcost = sum(p.UnitPrice * od.quantity)
from dbo.OrderDetails od
inner join dbo.Product p on p.ProductID = od.ProductID
WHERE od.OrderID = @orderID
return @totalcost
end 
select dbo.getcost (502)
