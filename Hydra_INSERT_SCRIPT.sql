USE FinalProjectHydra
-- -----------------------------------------------------
-- INSERT VALUES IN Table dbo.ZipCode
-- -----------------------------------------------------
INSERT INTO dbo.ZipCode([City], [State], [ZipCode]) VALUES ('Boston', 'MA', '02108');
INSERT INTO dbo.ZipCode([City], [State], [ZipCode]) VALUES ('Boston', 'MA', '02109');
INSERT INTO dbo.ZipCode([City], [State], [ZipCode]) VALUES ('Boston', 'MA', '02110');
INSERT INTO dbo.ZipCode([City], [State], [ZipCode]) VALUES ('Boston', 'MA', '02111');
INSERT INTO dbo.ZipCode([City], [State], [ZipCode]) VALUES ('Boston', 'MA', '02112');
INSERT INTO dbo.ZipCode([City], [State], [ZipCode]) VALUES ('Boston', 'MA', '02113');
INSERT INTO dbo.ZipCode([City], [State], [ZipCode]) VALUES ('Boston', 'MA', '02114');
INSERT INTO dbo.ZipCode([City], [State], [ZipCode]) VALUES ('Boston', 'MA', '02115');
INSERT INTO dbo.ZipCode([City], [State], [ZipCode]) VALUES ('Boston', 'MA', '02116');
INSERT INTO dbo.ZipCode([City], [State], [ZipCode]) VALUES ('Boston', 'MA', '02117');
INSERT INTO dbo.ZipCode([City], [State], [ZipCode]) VALUES ('Boston', 'MA', '02118');
INSERT INTO dbo.ZipCode([City], [State], [ZipCode]) VALUES ('Boston', 'MA', '02119');
INSERT INTO dbo.ZipCode([City], [State], [ZipCode]) VALUES ('Boston', 'MA', '02120');
INSERT INTO dbo.ZipCode([City], [State], [ZipCode]) VALUES ('Boston', 'MA', '02121');
INSERT INTO dbo.ZipCode([City], [State], [ZipCode]) VALUES ('Boston', 'MA', '02122');
INSERT INTO dbo.ZipCode([City], [State], [ZipCode]) VALUES ('Boston', 'MA', '02123');
INSERT INTO dbo.ZipCode([City], [State], [ZipCode]) VALUES ('Boston', 'MA', '02124');
INSERT INTO dbo.ZipCode([City], [State], [ZipCode]) VALUES ('Boston', 'MA', '02125');

-- -----------------------------------------------------
-- INSERT VALUES IN Table dbo.Consumer
-- -----------------------------------------------------
 open symmetric key SSN_KEY_01
  DECRYPTION BY CERTIFICATE Password_Ency1;
INSERT INTO dbo.Consumer (ConsumerID, ConsumerFName, ConsumerLName, DOB, phoneno, ConsumerEmail, StreetAddress, ZipCode,ConsumerUsername, LoginPassword) VALUES (301, 'Kerwinn', 'Baldery', '01/26/1999', '317 370 2624', 'kbaldery0@fda.gov', '55671 Grasskamp Drive', '02108','kbaldery0',ENCRYPTBYKEY(KEY_GUID('SSN_key_01'),'L3COLLdt'));
INSERT INTO dbo.Consumer (ConsumerID, ConsumerFName, ConsumerLName, DOB, phoneno, ConsumerEmail, StreetAddress, ZipCode,ConsumerUsername, Loginpassword) VALUES (302, 'Felisha', 'Awcoate', '04/14/1992', '759 656 4765', 'fawcoate1@surveymonkey.com', '07 Sommers Center', '02108','fawcoate1',ENCRYPTBYKEY(KEY_GUID('SSN_key_01'),'5b2CwNkrKhmv'));
INSERT INTO dbo.Consumer (ConsumerID, ConsumerFName, ConsumerLName, DOB, phoneno, ConsumerEmail, StreetAddress, ZipCode,ConsumerUsername, Loginpassword) VALUES (303, 'Shanda', 'Owlner', '07/29/1990', '144 628 9575', 'sowlner2@phoca.cz', '4 High Crossing Park', '02109','sowlner2',ENCRYPTBYKEY(KEY_GUID('SSN_key_01'),'nQ2i5wpW'));
INSERT INTO dbo.Consumer (ConsumerID, ConsumerFName, ConsumerLName, DOB, phoneno, ConsumerEmail, StreetAddress, ZipCode,ConsumerUsername, Loginpassword) VALUES (304, 'Griffin', 'Royle', '06/12/1998', '732 923 3962', 'groyle3@istockphoto.com', '7 Forest Junction','02109', 'groyle3',ENCRYPTBYKEY(KEY_GUID('SSN_key_01'),'XJrw45p7wiOd'));
INSERT INTO dbo.Consumer (ConsumerID, ConsumerFName, ConsumerLName, DOB, phoneno, ConsumerEmail, StreetAddress, ZipCode,ConsumerUsername, Loginpassword) VALUES (305, 'Johanna', 'Luety', '03/14/1992', '226 255 8860', 'jluety4@state.tx.us', '9812 Fairfield Terrace','02110', 'jluety4',ENCRYPTBYKEY(KEY_GUID('SSN_key_01'),'YPv7Iw'));
INSERT INTO dbo.Consumer (ConsumerID, ConsumerFName, ConsumerLName, DOB, phoneno, ConsumerEmail, StreetAddress, ZipCode,ConsumerUsername, Loginpassword) VALUES (306, 'Vivia', 'Luscombe', '06/20/2003', '679 151 8546', 'vluscombe5@indiatimes.com', '1551 Forest Junction','02111', 'vluscombe5',ENCRYPTBYKEY(KEY_GUID('SSN_key_01'),'fT1ZpD'));
INSERT INTO dbo.Consumer (ConsumerID, ConsumerFName, ConsumerLName, DOB, phoneno, ConsumerEmail, StreetAddress, ZipCode,ConsumerUsername, Loginpassword) VALUES (307, 'Vere', 'Caudrey', '02/04/2004', '221 488 0243', 'vcaudrey6@w3.org', '29188 Gina Court', '02112','vcaudrey6',ENCRYPTBYKEY(KEY_GUID('SSN_key_01'),'EJcBSp5F5z'));
INSERT INTO dbo.Consumer (ConsumerID, ConsumerFName, ConsumerLName, DOB, phoneno, ConsumerEmail, StreetAddress, ZipCode,ConsumerUsername, Loginpassword) VALUES (308, 'Sybila', 'Hales', '06/16/1994', '502 590 1514', 'shales7@desdev.cn', '26698 Moulton Trail', '02112','shales7',ENCRYPTBYKEY(KEY_GUID('SSN_key_01'),'kyg1yBmQConsumerIDJ'));
INSERT INTO dbo.Consumer (ConsumerID, ConsumerFName, ConsumerLName, DOB, phoneno, ConsumerEmail, StreetAddress, ZipCode,ConsumerUsername, Loginpassword) VALUES (309,'Sybila', 'Hales', '06/16/1994', '502 590 1514', 'shales7@desdev.cn', '26698 Moulton Trail', '02112','shales7',ENCRYPTBYKEY(KEY_GUID('SSN_key_01'),'kyg1yBmQConsumerIDJ'));
INSERT INTO dbo.Consumer (ConsumerID, ConsumerFName, ConsumerLName, DOB, phoneno, ConsumerEmail, StreetAddress, ZipCode,ConsumerUsername, Loginpassword) VALUES (310, 'VConsumerIDa', 'Petroff', '11/09/2001', '983 878 6990', 'vpetroff9@europa.eu', '1787 Shelley Trail','02114','vpetroff9',ENCRYPTBYKEY(KEY_GUID('SSN_key_01'),'EWRZuACM'));
INSERT INTO dbo.Consumer (ConsumerID, ConsumerFName, ConsumerLName, DOB, phoneno, ConsumerEmail, StreetAddress, ZipCode,ConsumerUsername, Loginpassword) VALUES (311, 'Oliver', 'Sabberton', '10/19/2001', '199 655 1191', 'osabbertona@independent.co.uk', '16272 Fremont Park','02115', 'osabbertona',ENCRYPTBYKEY(KEY_GUID('SSN_key_01'),'y6Ne59bgO'));
INSERT INTO dbo.Consumer (ConsumerID, ConsumerFName, ConsumerLName, DOB, phoneno, ConsumerEmail, StreetAddress, ZipCode,ConsumerUsername, Loginpassword) VALUES (312, 'Vite', 'Dudill', '12/22/2003', '892 876 5624', 'vdudillb@e-recht24.de', '705 Warbler Plaza', '02110','vdudillb',ENCRYPTBYKEY(KEY_GUID('SSN_key_01'),'gBz2hSE'));
INSERT INTO dbo.Consumer (ConsumerID, ConsumerFName, ConsumerLName, DOB, phoneno, ConsumerEmail, StreetAddress,ZipCode, ConsumerUsername, Loginpassword) VALUES (313, 'Raffaello', 'Murison', '02/28/1992', '220 374 8381', 'rmurisonc@google.es', '83163 Kim Place', '02108','rmurisonc',ENCRYPTBYKEY(KEY_GUID('SSN_key_01'),'5uhiJPjY3'));
INSERT INTO dbo.Consumer (ConsumerID, ConsumerFName, ConsumerLName, DOB, phoneno, ConsumerEmail, StreetAddress, ZipCode,ConsumerUsername, Loginpassword) VALUES (314, 'Mehetabel', 'Welbrock', '12/06/1994', '860 434 0115', 'mwelbrockd@bravesites.com', '2966 Fallview Terrace','02110', 'mwelbrockd',ENCRYPTBYKEY(KEY_GUID('SSN_key_01'),'LFy6lI2'));
INSERT INTO dbo.Consumer (ConsumerID, ConsumerFName, ConsumerLName, DOB, phoneno, ConsumerEmail, StreetAddress,ZipCode,ConsumerUsername, Loginpassword) VALUES (315, 'Perceval', 'Gaine of England', '02/06/1999', '771 566 1319', 'pgaineofenglande@shinystat.com', '2 Express Alley', '02111','pgaineofenglande',ENCRYPTBYKEY(KEY_GUID('SSN_key_01'),'40Vp6cqcg'));

-- -----------------------------------------------------
-- INSERT VALUES IN Table dbo.Shipper
-- -----------------------------------------------------

INSERT INTO Shipper (shipperID, ShipperName, ShipperContact) VALUES (601, 'Oberbrunner and Schroeder', '727 272 6066');
INSERT INTO Shipper (shipperID, ShipperName, ShipperContact) VALUES (602, 'Hartmann and Welch', '522 281 9098');
INSERT INTO Shipper (shipperID, ShipperName, ShipperContact) VALUES (603, 'Runolfsdottir and Schowalter', '620 309 1918');
INSERT INTO Shipper (shipperID, ShipperName, ShipperContact) VALUES (604, 'Bauch LLC', '182 362 4808');
INSERT INTO Shipper (shipperID, ShipperName, ShipperContact) VALUES (605, 'Friesen LLC', '528 921 0551');
INSERT INTO Shipper (shipperID, ShipperName, ShipperContact) VALUES (606, 'Marquardt-Reilly', '363 907 3895');
INSERT INTO Shipper (shipperID, ShipperName, ShipperContact) VALUES (607, 'Rempel and Wolff', '946 809 7927');
INSERT INTO Shipper (shipperID, ShipperName, ShipperContact) VALUES (608, 'Thompson Inc', '341 275 6553');
INSERT INTO Shipper (shipperID, ShipperName, ShipperContact) VALUES (609, 'Farrell and Torp', '699 984 7037');
INSERT INTO Shipper (shipperID, ShipperName, ShipperContact) VALUES (610, 'Vandervort and Wolff', '877 862 0572');

-- -----------------------------------------------------
-- INSERT VALUES IN Table dbo.[Order]
-- -----------------------------------------------------
INSERT INTO [order] (OrderID ,consumerID, ShipperID) VALUES (501, 305, 601);
INSERT INTO [order] (OrderID ,consumerID, ShipperID) VALUES (502, 301, 603);
INSERT INTO [order] (OrderID ,consumerID, ShipperID) VALUES (503, 307, 604);
INSERT INTO [order] (OrderID ,consumerID, ShipperID) VALUES (504, 308, 607);
INSERT INTO [order] (OrderID ,consumerID, ShipperID) VALUES (505, 309, 607);
INSERT INTO [order] (OrderID ,consumerID, ShipperID) VALUES (506, 302, 601);
INSERT INTO [order] (OrderID ,consumerID, ShipperID) VALUES (507, 301, 603);
INSERT INTO [order] (OrderID ,consumerID, ShipperID) VALUES (508, 305, 602);
INSERT INTO [order] (OrderID ,consumerID, ShipperID) VALUES (509, 303, 607);
INSERT INTO [order] (OrderID ,consumerID, ShipperID) VALUES (510, 302, 609);
INSERT INTO [order] (OrderID ,consumerID, ShipperID) VALUES (511, 315, 605);
INSERT INTO [order] (OrderID ,consumerID, ShipperID) VALUES (512, 301, 604);
INSERT INTO [order] (OrderID ,consumerID, ShipperID) VALUES (513, 303, 601);
INSERT INTO [order] (OrderID ,consumerID, ShipperID) VALUES (514, 304, 602);
INSERT INTO [order] (OrderID ,consumerID, ShipperID) VALUES (515, 305, 603);
INSERT INTO [order] (OrderID ,consumerID, ShipperID) VALUES (516, 306, 604);
INSERT INTO [order] (OrderID ,consumerID, ShipperID) VALUES (517, 307, 605);
INSERT INTO [order] (OrderID ,consumerID, ShipperID) VALUES (518, 309, 606);
INSERT INTO [order] (OrderID ,consumerID, ShipperID) VALUES (519, 310, 607);
INSERT INTO [order] (OrderID ,consumerID, ShipperID) VALUES (520, 311, 608);

-- -----------------------------------------------------
-- Table dbo.Category
-- -----------------------------------------------------
INSERT INTO dbo.Category(CategoryID, categoryName, CategoryDescription, categoryportal) VALUES (401, 'console','light weight and portable','0909');
INSERT INTO dbo.Category(CategoryID, categoryName, CategoryDescription, categoryportal) VALUES (402, 'CD','portable','0101');
INSERT INTO dbo.Category(CategoryID, categoryName, CategoryDescription, categoryportal) VALUES (403, 'gaming mouse','wireless','897');
INSERT INTO dbo.Category(CategoryID, categoryName, CategoryDescription, categoryportal) VALUES (404, 'headset','wireless and battery operated','8978');
INSERT INTO dbo.Category(CategoryID, categoryName, CategoryDescription, categoryportal) VALUES (405, 'gaming mic','audio recording','1897');
INSERT INTO dbo.Category(CategoryID, categoryName, CategoryDescription, categoryportal) VALUES (406, 'gaming laptop','light weight','2897');
INSERT INTO dbo.Category(CategoryID, categoryName, CategoryDescription, categoryportal) VALUES (407, 'gaming pc','Robust','3897');
INSERT INTO dbo.Category(CategoryID, categoryName, CategoryDescription, categoryportal) VALUES (408, 'graphic card','powerful','4897');
INSERT INTO dbo.Category(CategoryID, categoryName, CategoryDescription, categoryportal) VALUES (409, 'Recording device','screen recording ','5897');
INSERT INTO dbo.Category(CategoryID, categoryName, CategoryDescription, categoryportal) VALUES (410, 'controller','only for xbox ','6897');
INSERT INTO dbo.Category(CategoryID, categoryName, CategoryDescription, categoryportal) VALUES (411, 'VR','only for VR gaming','7897');
INSERT INTO dbo.Category(CategoryID, categoryName, CategoryDescription, categoryportal) VALUES (412, 'Handheld','battery powered','8897');
INSERT INTO dbo.Category(CategoryID, categoryName, CategoryDescription, categoryportal) VALUES (413, 'mouse pad','comfortable','9897');
 

-- -----------------------------------------------------
-- INSERT VALUES IN Table dbo.Product
-- -----------------------------------------------------
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (123,'XBOX','Console',500,401,10,4.5);	
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (124,'PS','PSConsole',400,402,7,3);
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (125,'logitech P5','with LED',69,403,11,4.4);	
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (126,'sony z43','bluetooth ',79,404,12,1.5);	
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (127,'R-bd','less than 200 grams ',113,405,13,3.7);	
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (128,'Dell','Powerful Hardware ',1500,406,23,3.5);	
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (129,'D-store','Fully Assembled',5500,407,2,4.0);	
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (130,'Cannon','Changable Lens ',5100,408,14,4.7);	
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (131,'Xbox controller','For XBox Console',101,409,15,2.2);	
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (132,'Samsung VR','VR Reality',2300,410,15,2.1);	
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (134,'Nimo','Multi-Player',143,412,6,4.1);	
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (133,'King Mouse Pads','Made from  light weight Plastic',25,413,100,4.2);	
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (135,'Ninja','Chinese Console',512,401,40,4.6);	
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (136,'PS1','Sony PS',476,402,71,4.8);
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (137,'Northwood G-force','can pair with 2 devices',39,403,1,4.0);
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (138,'Chips Pro','With Mic',40,404,57,3.1);
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (139,'Peter Mx','Adjustable stand ',401,405,75,3.6);
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (140,'PS Lenonvo','Full HD ',4200,406,87,1.1);
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (142,'Lenonvo Pc','2 years replacement',45000,407,18,1.9);
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (143,'Glod Recordings','Free BagPack',1200,408,76,2.9);
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (144,'PS controller','Only for PS',230,409,37,3.9);
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (145,'Nokia VR','Best in class',450,410,58,2.4);
INSERT INTO dbo.Product(productID, ProductName, ProductDescription, UnitPrice, CategoryID, UnitInStock, AvgRating) VALUES (146,'Prime Devices','Max Storage',490,411,328,5.0);

-- -----------------------------------------------------
-- INSERT VALUES IN Table dbo.OrderDetails
-- -----------------------------------------------------
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (501, 123,2, '06/05/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (502, 123,1, '05/04/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (503, 124,2, '06/04/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (504, 123,5, '06/04/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (505, 123,1, '11/04/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (501, 131,2, '06/05/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (502, 133,1, '05/04/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (503, 132,2, '06/04/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (503, 134,5, '06/04/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (505, 135,1, '11/04/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (506, 123,2, '06/07/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (507, 123,1, '05/08/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (508, 124,2, '06/09/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (509, 142,5, '06/10/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (510, 143,1, '11/11/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (511, 143,2, '06/12/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (512, 145,1, '05/13/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (513, 146,2, '06/14/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (514, 135,5, '06/14/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (515, 136,1, '11/14/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (516, 137,2, '06/15/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (517, 138,1, '05/16/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (518, 139,2, '06/17/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (519, 140,5, '06/18/2019');
INSERT INTO [orderDetails] (OrderID, ProductID, Quantity, OrderDate) VALUES (520, 144,1, '11/19/2019');

-- -----------------------------------------------------
-- INSERT VALUES IN Table dbo.Supplier
-- -----------------------------------------------------
INSERT INTO Supplier (SupplierID, SupplierName, ContactTitle,ContactName, Supplierphone) VALUES (1, 'Labadie-Larkin', 'purchase manager','Mayur', '4182077222');
INSERT INTO Supplier (SupplierID, SupplierName, ContactTitle,ContactName ,Supplierphone) VALUES (2, 'Mann-Mueller', 'sales Associate','josh' ,'6613967361');
INSERT INTO Supplier (SupplierID, SupplierName, ContactTitle,ContactName ,Supplierphone) VALUES (3, 'Stanton, Boehm and Gleason', 'sales manager ','Hanoz' ,'3453942563');
INSERT INTO Supplier (SupplierID, SupplierName, ContactTitle,ContactName ,Supplierphone) VALUES (4, 'Trantow-Willms', 'coordinator','kevin', '9823655071');
INSERT INTO Supplier (SupplierID, SupplierName, ContactTitle,ContactName ,Supplierphone) VALUES (5, 'Hoppe and Sons', 'Manager', 'Prat','9097382063');
INSERT INTO Supplier  (SupplierID, SupplierName, ContactTitle, ContactName, SupplierPhone) VALUES (6, 'Cassin Inc', 'Transport Manager', 'Lidia Tremaine', '832 893 2454');
INSERT INTO Supplier  (SupplierID, SupplierName, ContactTitle, ContactName, SupplierPhone) VALUES (7, 'Volkman, Oberbrunner and Little', 'Logistics Analyst III', 'Gayla Parlor', '466 113 6487');
INSERT INTO Supplier  (SupplierID, SupplierName, ContactTitle, ContactName, SupplierPhone) VALUES (8, 'Smitham, Corwin and Schiller', ' Engineer', 'Ban GiacobbiniJacob', '627 278 8121');
INSERT INTO Supplier  (SupplierID, SupplierName, ContactTitle, ContactName, SupplierPhone) VALUES (9, 'Monahan-Kiehn', 'sales Advisor', 'Sibelle Evemy', '879 132 0013');
INSERT INTO Supplier  (SupplierID, SupplierName, ContactTitle, ContactName, SupplierPhone) VALUES (10, 'Stiedemann-Wolff', 'Sr.sales ', 'Darcy Sach', '692 181 3749');
INSERT INTO Supplier  (SupplierID, SupplierName, ContactTitle, ContactName, SupplierPhone) VALUES (11, 'Moen Inc', 'sales Engineer', 'Berry Simonelli', '251 308 1483');
INSERT INTO Supplier  (SupplierID, SupplierName, ContactTitle, ContactName, SupplierPhone) VALUES (12, 'Ebert-Bauch', 'Marketing Manager ', 'Tomkin St. Hill', '655 817 6641');
INSERT INTO Supplier  (SupplierID, SupplierName, ContactTitle, ContactName, SupplierPhone) VALUES (13, 'Beier LLC', 'Product Engineer', 'Sherilyn Espinos', '626 659 6283');
INSERT INTO Supplier  (SupplierID, SupplierName, ContactTitle, ContactName, SupplierPhone) VALUES (14, 'Goodwin-Grady', 'Marketing Manager 1', 'Torrey Baudasso', '309 309 8419');
INSERT INTO Supplier  (SupplierID, SupplierName, ContactTitle, ContactName, SupplierPhone) VALUES (115, 'Ondricka-Cummerata', 'Marketing and Sales Haed', 'Malcolm Greenier', '771 762 3174');
-- -----------------------------------------------------
-- INSERT VALUES IN Table dbo.ProductReceiving
-- -----------------------------------------------------
INSERT INTO ProductReceiving (ProductID,SupplierID,DateReceived) VALUES (123,1,'4/11/2019');
INSERT INTO ProductReceiving (ProductID,SupplierID,DateReceived) VALUES (123,1,'7/1/2018');
INSERT INTO ProductReceiving (ProductID,SupplierID,DateReceived) VALUES (124,5,'8/11/2019');
INSERT INTO ProductReceiving (ProductID,SupplierID,DateReceived) VALUES (125,2,'4/11/2019');
INSERT INTO ProductReceiving (ProductID,SupplierID,DateReceived) VALUES (126,3,'7/1/2018');
INSERT INTO ProductReceiving (ProductID,SupplierID,DateReceived) VALUES (127,5,'8/11/2019');
INSERT INTO ProductReceiving (ProductID,SupplierID,DateReceived) VALUES (128,6,'4/11/2019');
INSERT INTO ProductReceiving (ProductID,SupplierID,DateReceived) VALUES (128,7,'7/1/2018');
INSERT INTO ProductReceiving (ProductID,SupplierID,DateReceived) VALUES (129,8,'8/11/2019');
INSERT INTO ProductReceiving (ProductID,SupplierID,DateReceived) VALUES (129,9,'4/11/2019');
INSERT INTO ProductReceiving (ProductID,SupplierID,DateReceived) VALUES (130,7,'7/1/2018');
INSERT INTO ProductReceiving (ProductID,SupplierID,DateReceived) VALUES (131,8,'8/11/2019');
INSERT INTO ProductReceiving (ProductID,SupplierID,DateReceived) VALUES (123,9,'4/11/2019');
INSERT INTO ProductReceiving (ProductID,SupplierID,DateReceived) VALUES (124,7,'7/1/2018');
INSERT INTO ProductReceiving (ProductID,SupplierID,DateReceived) VALUES (125,8,'8/11/2019');
-- -----------------------------------------------------
-- INSERT VALUES IN Table dbo.Invoice
-- -----------------------------------------------------
INSERT INTO Invoice([InvoiceID],[InvoiceDate],[ConsumerId],[InvoiceAmt]) VALUES('701','06/05/2019','305','1202');
INSERT INTO Invoice([InvoiceID],[InvoiceDate],[ConsumerId],[InvoiceAmt]) VALUES('702','06/05/2019','301','643');
INSERT INTO Invoice([InvoiceID],[InvoiceDate],[ConsumerId],[InvoiceAmt]) VALUES('703', '06/04/2019','307','5525');
INSERT INTO Invoice([InvoiceID],[InvoiceDate],[ConsumerId],[InvoiceAmt]) VALUES('704','06/04/2019','308','3012');
INSERT INTO Invoice([InvoiceID],[InvoiceDate],[ConsumerId],[InvoiceAmt]) VALUES('705','11/04/2019','309','500');
INSERT INTO Invoice([InvoiceID],[InvoiceDate],[ConsumerId],[InvoiceAmt]) VALUES('706','06/07/2019','302','1000');
INSERT INTO Invoice([InvoiceID],[InvoiceDate],[ConsumerId],[InvoiceAmt]) VALUES('707','05/08/2019','301','500');
INSERT INTO Invoice([InvoiceID],[InvoiceDate],[ConsumerId],[InvoiceAmt]) VALUES('708','06/09/2019','305','800');
INSERT INTO Invoice([InvoiceID],[InvoiceDate],[ConsumerId],[InvoiceAmt]) VALUES('709','06/10/2019','303','6000');
INSERT INTO Invoice([InvoiceID],[InvoiceDate],[ConsumerId],[InvoiceAmt]) VALUES('710', '11/11/2019','302','230');
INSERT INTO Invoice([InvoiceID],[InvoiceDate],[ConsumerId],[InvoiceAmt]) VALUES('711','06/12/2019','315','460');
INSERT INTO Invoice([InvoiceID],[InvoiceDate],[ConsumerId],[InvoiceAmt]) VALUES('712','05/13/2019','301','450');
INSERT INTO Invoice([InvoiceID],[InvoiceDate],[ConsumerId],[InvoiceAmt]) VALUES('713', '06/14/2019','303','980');
INSERT INTO Invoice([InvoiceID],[InvoiceDate],[ConsumerId],[InvoiceAmt]) VALUES('714','06/14/2019','304','2560');
INSERT INTO Invoice([InvoiceID],[InvoiceDate],[ConsumerId],[InvoiceAmt]) VALUES('715','11/14/2019','305','476');
INSERT INTO Invoice([InvoiceID],[InvoiceDate],[ConsumerId],[InvoiceAmt]) VALUES('716', '06/15/2019','306','802');
INSERT INTO Invoice([InvoiceID],[InvoiceDate],[ConsumerId],[InvoiceAmt]) VALUES('717', '05/16/2019','307','40');
INSERT INTO Invoice([InvoiceID],[InvoiceDate],[ConsumerId],[InvoiceAmt]) VALUES('718', '06/17/2019','309','802');
INSERT INTO Invoice([InvoiceID],[InvoiceDate],[ConsumerId],[InvoiceAmt]) VALUES('719', '06/18/2019','310','2100');
INSERT INTO Invoice([InvoiceID],[InvoiceDate],[ConsumerId],[InvoiceAmt]) VALUES('720', '11/19/2019','311','230');
-- -----------------------------------------------------
-- INSERT VALUES IN Table dbo.Payment
-- -----------------------------------------------------
INSERT INTO Payment([PaymentID],[InvoiceID],[CardType],[CardDetails]) VALUES(201,701,'ATM CARD','4532915443426');
INSERT INTO Payment([PaymentID],[InvoiceID],[CardType],[CardDetails]) VALUES(202,702,'FOREX','4115054665946175');
INSERT INTO Payment([PaymentID],[InvoiceID],[CardType],[CardDetails]) VALUES(203,703,'Debit','4556130941195666');
INSERT INTO Payment([PaymentID],[InvoiceID],[CardType],[CardDetails]) VALUES(204,704,'Credit','4852153348777325');
INSERT INTO Payment([PaymentID],[InvoiceID],[CardType],[CardDetails]) VALUES(205,705,'ATM CARD','4851517746006');
INSERT INTO Payment([PaymentID],[InvoiceID],[CardType],[CardDetails]) VALUES(206,706,'CREDIT','4929185320096');
INSERT INTO Payment([PaymentID],[InvoiceID],[CardType],[CardDetails]) VALUES(207,707,'CREDIT','4916816611453089');
INSERT INTO Payment([PaymentID],[InvoiceID],[CardType],[CardDetails]) VALUES(208,708,'CREDIT','4916498112777678');
INSERT INTO Payment([PaymentID],[InvoiceID],[CardType],[CardDetails]) VALUES(209,709,'ATM CARD','4024007123553');
INSERT INTO Payment([PaymentID],[InvoiceID],[CardType],[CardDetails]) VALUES(210,710,'ATM CARD','4485753529113');
INSERT INTO Payment([PaymentID],[InvoiceID],[CardType],[CardDetails]) VALUES(211,711,'ATM CARD','4539698910349');
INSERT INTO Payment([PaymentID],[InvoiceID],[CardType],[CardDetails]) VALUES(212,712,'ATM CARD','4716619229674');
INSERT INTO Payment([PaymentID],[InvoiceID],[CardType],[CardDetails]) VALUES(213,713,'FOREX','4485338663685618');
INSERT INTO Payment([PaymentID],[InvoiceID],[CardType],[CardDetails]) VALUES(214,714,'FOREX','4024007153421044');
INSERT INTO Payment([PaymentID],[InvoiceID],[CardType],[CardDetails]) VALUES(215,715,'FOREX','4556886870135');
INSERT INTO Payment([PaymentID],[InvoiceID],[CardType],[CardDetails]) VALUES(216,716,'FOREX','4532156546127');
INSERT INTO Payment([PaymentID],[InvoiceID],[CardType],[CardDetails]) VALUES(217,717,'DEBIT','4556528830175493');
INSERT INTO Payment([PaymentID],[InvoiceID],[CardType],[CardDetails]) VALUES(218,718,'DEBIT','4485985320668955');
INSERT INTO Payment([PaymentID],[InvoiceID],[CardType],[CardDetails]) VALUES(219,719,'DEbit','4418709445819307');
INSERT INTO Payment([PaymentID],[InvoiceID],[CardType],[CardDetails]) VALUES(220,720,'FOREX','4491839926950');
-- -----------------------------------------------------
-- INSERT VALUES IN Table dbo.LeaderBoard
-- -----------------------------------------------------
INSERT INTO LeaderBoard (LeaderBoardID, Score, HoursPlayed) VALUES(910, 97, 1475)
INSERT INTO LeaderBoard (LeaderBoardID, Score, HoursPlayed) VALUES(905, 62, 547)
INSERT INTO LeaderBoard (LeaderBoardID, Score, HoursPlayed) VALUES(956, 75, 701)
INSERT INTO LeaderBoard (LeaderBoardID, Score, HoursPlayed) VALUES(907, 82, 856)
INSERT INTO LeaderBoard (LeaderBoardID, Score, HoursPlayed) VALUES(925, 69, 969)
INSERT INTO LeaderBoard (LeaderBoardID, Score, HoursPlayed) VALUES(906, 75, 456)
INSERT INTO LeaderBoard (LeaderBoardID, Score, HoursPlayed) VALUES(915, 28, 216)
INSERT INTO LeaderBoard (LeaderBoardID, Score, HoursPlayed) VALUES(920, 90, 734)
INSERT INTO LeaderBoard (LeaderBoardID, Score, HoursPlayed) VALUES(909, 57, 340)
INSERT INTO LeaderBoard (LeaderBoardID, Score, HoursPlayed) VALUES(912, 99, 1857)
INSERT INTO LeaderBoard (LeaderBoardID, Score, HoursPlayed) VALUES(922, 49, 313)
INSERT INTO LeaderBoard (LeaderBoardID, Score, HoursPlayed) VALUES(929, 81, 218)
INSERT INTO LeaderBoard (LeaderBoardID, Score, HoursPlayed) VALUES(927, 97, 979)
INSERT INTO LeaderBoard (LeaderBoardID, Score, HoursPlayed) VALUES(933, 82, 727)
INSERT INTO LeaderBoard (LeaderBoardID, Score, HoursPlayed) VALUES(939, 79, 808)
INSERT INTO LeaderBoard (LeaderBoardID, Score, HoursPlayed) VALUES(943, 85, 1024)
INSERT INTO LeaderBoard (LeaderBoardID, Score, HoursPlayed) VALUES(944, 69, 696)
INSERT INTO LeaderBoard (LeaderBoardID, Score, HoursPlayed) VALUES(947, 79, 1207)
INSERT INTO LeaderBoard (LeaderBoardID, Score, HoursPlayed) VALUES(990, 29, 115)
INSERT INTO LeaderBoard (LeaderBoardID, Score, HoursPlayed) VALUES(979, 97, 863)
-- -----------------------------------------------------
-- INSERT VALUES IN Table dbo.LeaderBoardDetails
-- -----------------------------------------------------
INSERT INTO LeaderBoardDetails (LeaderBoardID, ConsumerID) VALUES(910, 301)
INSERT INTO LeaderBoardDetails (LeaderBoardID, ConsumerID) VALUES(905, 301)
INSERT INTO LeaderBoardDetails (LeaderBoardID, ConsumerID) VALUES(956, 303)
INSERT INTO LeaderBoardDetails (LeaderBoardID, ConsumerID) VALUES(907, 303)
INSERT INTO LeaderBoardDetails (LeaderBoardID, ConsumerID) VALUES(925, 303)
INSERT INTO LeaderBoardDetails (LeaderBoardID, ConsumerID) VALUES(906, 302)
INSERT INTO LeaderBoardDetails (LeaderBoardID, ConsumerID) VALUES(915, 304)
INSERT INTO LeaderBoardDetails (LeaderBoardID, ConsumerID) VALUES(920, 305)
INSERT INTO LeaderBoardDetails (LeaderBoardID, ConsumerID) VALUES(909, 306)
INSERT INTO LeaderBoardDetails (LeaderBoardID, ConsumerID) VALUES(912, 307)
INSERT INTO LeaderBoardDetails (LeaderBoardID, ConsumerID) VALUES(922, 308)
INSERT INTO LeaderBoardDetails (LeaderBoardID, ConsumerID) VALUES(929, 309)
INSERT INTO LeaderBoardDetails (LeaderBoardID, ConsumerID) VALUES(927, 310)
INSERT INTO LeaderBoardDetails (LeaderBoardID, ConsumerID) VALUES(933, 311)
INSERT INTO LeaderBoardDetails (LeaderBoardID, ConsumerID) VALUES(939, 312)
INSERT INTO LeaderBoardDetails (LeaderBoardID, ConsumerID) VALUES(943, 312)
INSERT INTO LeaderBoardDetails (LeaderBoardID, ConsumerID) VALUES(944, 313)
INSERT INTO LeaderBoardDetails (LeaderBoardID, ConsumerID) VALUES(947, 314)
INSERT INTO LeaderBoardDetails (LeaderBoardID, ConsumerID) VALUES(990, 314)
INSERT INTO LeaderBoardDetails (LeaderBoardID, ConsumerID) VALUES(979, 315)