use ShopDB
SET IDENTITY_INSERT Category on;
INSERT INTO Category (Id, ParentId, Name) VALUES 
	(1  , null, 	'������� ������'),
	(2  , 1,    	'�����'),
	(3  , 1, 		'����� �����'),
	(4  , 1, 		'����� ���������������'),
	(5  , null, 	'������'),
	(6  , 5, 		'OSB, QSB'),
	(7  , 5, 		'������'),
	(8  , 5, 		'���, ���'),
	(9  , 5, 		'����� ���������'),
	(10 , 5, 		'����'),
	(11 , null, 	'�������'),
	(12 , 11, 		'�����'),
	(13 , 11, 		'������'),
	(14 , 11, 		'��������'),
	(15 , 11, 		'��������'),
	(16 , 11, 		'����������'),
	(17 , null, 	'���i�����i ���i�i'),
	(18 , 17, 		'������'),
	(19 , 17, 		'�������'),
	(20 , 17, 		'ϳ���, �����'),
	(21 , null, 	'���������� ��������'),
	(22 , 21, 		'ϳ�������'),
	(23 , 21, 		'����'),
	(24 , 21, 		'���������� �����'),
	(25 , 21, 		'�������� ���'),
	(26 , 21, 		'ϳ�����������'),
	(27 , null, 	'�����������'),
	(28 , 27, 		'�����������'),
	(29 , 27, 		'�������'),
	(30 , null, 	'�����'),
	(31 , 30, 		'��������'),
	(32 , 30, 		'ѳ���'),
	(33 , 30, 		'�����'),
	(34 , 30, 		'���'),
	(35 , null, 	'��������'),
	(36 , 35, 		'������'),
	(37 , 35, 		'�������'),
	(38 , 35, 		'�����'),
	(39 , 35, 		'������'),
	(40 , 35, 		'������'),
	(41 , 35, 		'�����');
SET IDENTITY_INSERT Category off;
select * from Category

SET IDENTITY_INSERT Measure on;
INSERT INTO Measure (Id, Name, ShortName) VALUES
	(1 , '�����', '�.'), -- ���� 
	(2 , '�������', '�.'),
	(3 , 'ʳ������', '��.'), 
	(4 , '����', '�.'),
	(5 , '����', '�.'), -- �������
	(6 , '���� ����������', '�.��.'), 
	(7 , '���� �������', '�.���.'),
	(8 , '���� ��������', '�.���.'),
	(9 , '���������', '��.'),
	(10, '˳��', '�.'), -- ��'���
	(11, '������', '��.'),
	(12, '�����', '���.'),
	(13, '³���', '��.'),
	(14, '��������', '��.'), -- ����
	(15, '�����', '��.'),
	(16, '����', '��.'),
	(17, '̳���', '��.'),
	(18, '�����', '���.'),
	(19, '�����', '���.'),
	(20, '�����', '���.'),
	(21, '����', '����.'),
	(22, 'ϳ����', '��.');
SET IDENTITY_INSERT Measure off;

SET IDENTITY_INSERT Producer on;
INSERT INTO Producer (Id, Name, [Address], Phone) VALUES
	(1 , '���������� �����', '�����', '(066)-468-20-26'), 
	(2 , '������', '������', null),
	(3 , '�������', '���','(044)-111-22-33'),	
	(4 , '��� �����', '������, ���. ���������� 6 ','+38 044 499 34 11'),	
	(5 , '��� ��������� ��', 'Novovolynsk, ���.������','+380 93 323 8727'),	
	(6 , '��� ������-�', 'г���, ���.����� ������, 9','(362) 64-91-50'),	
	(7 , '������ - ��������� ��������', '����','+38 050 312 12 47'),	
	(8 , '�� ��� �����-1', '���, ���.�������������, 18','(044) 468-90-91'),	
	(9 , 'Aquaizol', '�����, ���.��.�������, 5','(0332) 77-00-59'),	
	(10, '����������� ��', '���, ���.�����������, 3�','(044) 363-10-90'),	
	(11, 'BauGut', 'г���, ���.��������, 17','(0362) 460-270 (71)'),	
	(12, '��������-�������', '�������, ��.����, 57','(067) 4084548'),	
	(13, 'URSA � ������', '���, ��-� �����������, 20�','(044) 461-98-70'),	
	(14, 'Masterfol', '��������, ���. ������� 2, ��.14','+380 (61) 2830896'),	
	(15, '��� �����������', 'г���, ���.�����������, 17�','+380-50-372-03-16'),	
	(16, '��� �������', '���������������, ���.���������������, 155','(05692) 7�42�46'),	
	(17, '����������', '�����, ���.���������� 367','(0322) 37-13-13'),	
	(18, 'ECOBoard Europe B.V.', 'Abtswoudseweg 10-18 , 2627AL Delft ͳ��������','***********'),	
	(19, 'TECHNOX', 'Slupno, ul.Jana Pawla II 26,','+48 22 774 30 37'),	
	(20, 'Modeco', '�.��������, ���.��������, 86','(050) 555-43-43');
SET IDENTITY_INSERT Producer off;

SET IDENTITY_INSERT Product on;
INSERT INTO Product (Id, Name, ProducerId, CategoryId) VALUES
	(1 , '������ �ֲ� �� 400', 2, 18), 
	(2 , '������ �-400 ��� IV �', 1, 18), 
	(3 , '������ �-500 �� II-3', 1, 18),  
	(4 , '��������', 2, 19),  
	(5 , '������', 2, 20),  
	(6 , '����� �������� ������������ ������', 3, 2),  
	(7 , '����� �������� ���������', 2, 2),  
	(8 , '�������� Aeroc EcoTerm Super Plus', 4, 3),  
	(9 , '�������� Aeroc Super Plus EcoTerm', 4, 3),  
	(10, '����� ��������������� 100 �� 4 �', 2, 4),  
	(11, '����� ��������������� 200 �� 4 �', 2, 4),  
	(12, '����� Kronospan SRL ���-3 2500x1250x8 ��', 5, 6),  
	(13, '����� QSB 2500x1250x10 ��', 5, 6),  
	(14, '������ �� 6.5�� 1525x1525��', 2, 7),  
	(15, '��� ��������� 2750x1830x16 �� ����� ������� 0088', 6, 8),  
	(16, '����� ������� ������� 2000x105x28 ��', 2, 9),  
	(17, '����� ��� ������ ������� ������� 3000x100x30 ��', 2, 9),  
	(18, '����� �������� ������ 15x28 �� 1 �', 2, 10),  
	(19, '����� 8 ����� 1750x1130 ��', 2, 12),  
	(20, '���� ������ ��� 2x0.95 � ��������', 7, 13),  
	(21, '������������ �������� �� ���� 1.5 10 �. ��', 8, 14),  
	(22, '�������� ������ Գ����� ������ 3 �.�� �������', 9, 15),  
	(23, '�������������� ����������� 1190x2125 �� ������', 10, 15),  
	(24, '���������� � 20 1150�2000 �� ������� 6005', 2, 16),  
	(25, 'ϳ������� ���-�-25 1000�500�100��', 11, 22),  
	(26, 'ϳ������� ���-� 15 1000�500�40 ��', 12, 22),  
	(27, '�������� Ursa Standart Plus 50 ��', 13, 23),  
	(28, '����� ������������� Masterfol Foil S MP 1.5x50 �', 14, 24),  
	(29, '�������� ��� Polifoam 3004 4 ��', 16, 25),  
	(30, '����� ��������������� ���������� 1180x580x20 ��', 17, 26),  
	(31, '����� ��������������� ���������� 1180x580x20 ��', 18, 26),  
	(32, '���� �������������� ������� 6H 3000x1050x6 �� ��������', 2, 28),  
	(33, '������� ��� ������� HP-10 �� 3000 ��', 2, 29),  
	(34, '�������� 8 �� 6 �', 2, 31),  
	(35, 'ѳ��� ������ ���������� 50�50x1.8 �� 1.5x10 �', 2, 32),  
	(36, '����� ��������� 20�20�2 �� 2 �', 2, 33),  
	(37, '����� ��������� 60�40�2 �� 2 �', 2, 33),  
	(38, '��� �� ����������� 1.2 �� 50 �', 2, 34),  
	(39, '��� �� ����������� 3 �� 110 �', 2, 34),  
	(40, '����� ������������� 3.5x30 (35 ��)', 2, 36),  
	(41, '����� ������������� 3.5� 9.5 (500 ��)', 2, 36),  
	(42, '������ FD 3.5x55 ������ (400 ��)', 2, 37),  
	(43, '������ FD 3.5x45 ������ (500 ��)', 2, 37),  
	(44, '������ FB 3.5x45 ������ (500 ��)', 2, 37),  
	(45, '����� ���������� 3.1x25 ��', 2, 38),  
	(46, '����� Technox �-��� 3.1x30-0 (100 ��)', 19, 38),  
	(47, '����� ������������ Technox 10/12x130', 19, 39),  
	(48, '����� ������� Technox 10x132', 19, 39),  
	(49, '����� ������� Technox 10x132', 19, 39),  
	(50, '����� ������������ 10x100', 2, 39),  
	(51, '������ �������� ������� 6.0x60 � ������ (100 ��)', 2, 40),  
	(52, '������ �������� ������� 6.0x35', 2, 40),  
	(53, '����� ��������� ������ 200 ��', 2, 41),  
	(54, '����� Modeco Expert 53x8 �� (1000 ��)', 20, 41);
SET IDENTITY_INSERT Product off;

SET IDENTITY_INSERT [Package] on;
INSERT INTO [Package] (Id, ProductId, Volume, VolumeMeasureId, MeasureId) VALUES
	(1 , 1 , 25, 	 3, 17),    -- 24.50 | 1, 1 prod 25kg mish
	(2 , 2 , 25, 	 3, 17),    -- 23.50
	(3 , 3 , 25, 	 3, 17),    -- 26.00
	(4 , 4 , 0.033,  7, 17), 	-- 31.50
	(5 , 5 , 25,	 3, 17), 	-- 10.50
	(6 , 6 , 1, 	15, 15), 	-- 4.42
	(7 , 6 , 480, 	15, 20), 	-- 4.42 x 480
	(8 , 7 , 1, 	15, 15), 	-- 2.44
	(9 , 7 , 305, 	15, 22), 	-- 2.44 x 305
	(10, 8 , 1, 	15, 15), 	-- 24.13
	(11, 9 , 1, 	15, 15), 	-- 30.20
	(12, 10, 1, 	15, 15), 	-- 139.00
	(13, 11, 1, 	15, 15), 	-- 309.00
	(14, 12, 1, 	15, 15), 	-- 209.00
	(15, 13, 1, 	15, 15), 	-- 137.90
	(16, 14, 1, 	15, 15), 	-- 82.90
	(17, 15, 1, 	15, 15), 	-- 294.90
	(18, 16, 4, 	15, 14), 	-- 169.90
	(19, 17, 4, 	15, 14), 	-- 199.90
	(20, 18, 1, 	15, 15), 	-- 2.35
	(21, 19, 1, 	15, 15), 	-- 59.90
	(22, 20, 1, 	15, 15), 	-- 99.90
	(23, 21, 1, 	15, 19), 	-- 166.00
	(24, 22, 1, 	15, 15), 	-- 169.00
	(25, 23, 1, 	15, 15), 	-- 146.90
	(26, 24, 1, 	15, 15), 	-- 135.90
	(27, 25, 1, 	15, 15), 	-- 30.95
	(28, 26, 1, 	15, 15), 	-- 5.22
	(29, 27, 1, 	15, 19), 	-- 146.22
	(30, 28, 1, 	15, 19), 	-- 219.00
	(31, 28, 1, 	15,  6), 	-- 12.20
	(32, 29, 1, 	15,  6), 	-- 17.99
	(33, 30, 1, 	15, 21), 	-- 16.90
	(34, 31, 1, 	15, 21), 	-- 26.15
	(35, 32, 1, 	15, 21), 	-- 244.90
	(36, 33, 1, 	15, 15), 	-- 83.90
	(37, 34, 1, 	15, 15), 	-- 29.55
	(38, 35, 1, 	15, 09), 	-- 229.00
	(39, 36, 1, 	15, 15), 	-- 28.90
	(40, 37, 1, 	15, 15), 	-- 69.90
	(41, 38, 1, 	15, 18), 	-- 17.91
	(42, 39, 1, 	15, 18), 	-- 159.90
	(43, 40, 1, 	15, 14), 	-- 7.90
	(44, 41, 1, 	15, 14), 	-- 45.90
	(45, 42, 1, 	15, 14), 	-- 59.90
	(46, 43, 1, 	15, 14), 	-- 51.90
	(47, 44, 1, 	15, 14), 	-- 51.90
	(48, 45, 1, 	 3,  3), 	-- 25.90
	(49, 46, 100, 	 4, 14), 	-- 5.90
	(50, 47, 1, 	15, 15), 	-- 10.90
	(51, 48, 1, 	15, 15), 	-- 3.10
	(52, 49, 1, 	15, 15), 	-- 4.10
	(53, 50, 1, 	15, 15), 	-- 5.90
	(54, 51, 100, 	15, 14), 	-- 15.90
	(55, 52, 50, 	15, 14), 	-- 11.90
	(56, 53,  1, 	15, 15), 	-- 11.90
	(57, 54, 1000, 	15, 14); 	-- 13.50
SET IDENTITY_INSERT Package off;

SET IDENTITY_INSERT Price on;
INSERT INTO Price (Id, PackageId, PriceTime, UnitCost) VALUES
	(1 , 1 , '2014-03-23 00:00:00', 24.50  	),     
	(2 , 2 , '2014-03-23 00:00:00', 23.50  	),     
	(3 , 3 , '2014-03-23 00:00:00', 26.00  	),     
	(4 , 4 , '2014-03-23 00:00:00', 31.50  	), 	
	(5 , 5 , '2014-03-23 00:00:00', 10.50  	), 	
	(6 , 6 , '2014-03-23 00:00:00', 4.42   	), 		
	(7 , 7 , '2014-03-23 00:00:00', 2121.60	), 	
	(8 , 8 , '2014-03-23 00:00:00', 2.44	), 		
	(9 , 9 , '2014-03-23 00:00:00', 744.20	), 	
	(10, 10, '2014-03-23 00:00:00', 24.13	), 	
	(11, 11, '2014-03-23 00:00:00', 30.20	), 	
	(12, 12, '2014-03-23 00:00:00', 139.00	), 	
	(13, 13, '2014-03-23 00:00:00', 309.00	), 	
	(14, 14, '2014-03-23 00:00:00', 209.00	), 	
	(15, 15, '2014-03-23 00:00:00', 137.90	), 	
	(16, 16, '2014-03-23 00:00:00', 82.90	), 	
	(17, 17, '2014-03-23 00:00:00', 294.90	), 	
	(18, 18, '2014-03-23 00:00:00', 169.90	), 	
	(19, 19, '2014-03-23 00:00:00', 199.90	), 	
	(20, 20, '2014-03-23 00:00:00', 2.35	), 		
	(21, 21, '2014-03-23 00:00:00', 59.90	), 	
	(22, 22, '2014-03-23 00:00:00', 99.90	), 	
	(23, 23, '2014-03-23 00:00:00', 166.00	), 	
	(24, 24, '2014-03-23 00:00:00', 169.00	), 	
	(25, 25, '2014-03-23 00:00:00', 146.90	), 	
	(26, 26, '2014-03-23 00:00:00', 135.90	), 	
	(27, 27, '2014-03-23 00:00:00', 30.95	), 	
	(28, 28, '2014-03-23 00:00:00', 5.22	), 		
	(29, 29, '2014-03-23 00:00:00', 146.22	), 	
	(30, 30, '2014-03-23 00:00:00', 219.00	), 	
	(31, 31, '2014-03-23 00:00:00', 12.20	), 	
	(32, 32, '2014-03-23 00:00:00', 17.99	), 	
	(33, 33, '2014-03-23 00:00:00', 16.90	), 	
	(34, 34, '2014-03-23 00:00:00', 26.15	), 	
	(35, 35, '2014-03-23 00:00:00', 244.90	), 	
	(36, 36, '2014-03-23 00:00:00', 83.90	), 	
	(37, 37, '2014-03-23 00:00:00', 29.55	), 	
	(38, 38, '2014-03-23 00:00:00', 229.00	), 	
	(39, 39, '2014-03-23 00:00:00', 28.90	), 	
	(40, 40, '2014-03-23 00:00:00', 69.90	), 	
	(41, 41, '2014-03-23 00:00:00', 17.91	), 	
	(42, 42, '2014-03-23 00:00:00', 159.90	), 	
	(43, 43, '2014-03-23 00:00:00', 7.90	), 		
	(44, 44, '2014-03-23 00:00:00', 45.90	), 	
	(45, 45, '2014-03-23 00:00:00', 59.90	), 	
	(46, 46, '2014-03-23 00:00:00', 51.90	), 	
	(47, 47, '2014-03-23 00:00:00', 51.90	), 	
	(48, 48, '2014-03-23 00:00:00', 25.90	), 	
	(49, 49, '2014-03-23 00:00:00', 5.90	), 		
	(50, 50, '2014-03-23 00:00:00', 10.90	), 	
	(51, 51, '2014-03-23 00:00:00', 3.10	), 		
	(52, 52, '2014-03-23 00:00:00', 4.10	), 		
	(53, 53, '2014-03-23 00:00:00', 5.90	), 		
	(54, 54, '2014-03-23 00:00:00', 15.90	), 	
	(55, 55, '2014-03-23 00:00:00', 11.90	), 	
	(56, 56, '2014-03-23 00:00:00', 11.90	), 	
	(57, 57, '2014-03-23 00:00:00', 13.50	); 	
SET IDENTITY_INSERT Price off;

SET IDENTITY_INSERT Customer on;
INSERT INTO Customer (Id, Name, Address, Phone) VALUES
	( 1 , 'TOB Provider One', 	'�.���',		  	'044-111-22-33'),
	( 2 , 'TOB Provider Two', 	'�.����',		  	'050-221-22-34'),
	( 3 , 'TOB Provider Three', '�.��������',	  	'050-221-22-35'),
	( 4 , 'TOB Provider Four', 	'�.�����',		  	'050-221-22-36'),
	( 5 , 'TOB Provider Five', 	'�.г���',		  	'050-221-33-44'),
	( 6 , 'TOB Provider Six', 	'�.������������', 	'050-221-33-45'),
	( 7 , 'TOB Provider Seven', '�.�������',	  	'050-221-33-46'),
	( 8 , '��� First Buyer', 	'�.���',			'044 001 88 78'),
	( 9 , '��� Second Buyer', 	'�.����',			'067 789 11 78'),
	( 10, '��� Third Buyer', 	'�.������',			'067 222 88 98'),
	( 11, '��� Fourth Buyer', 	'�.г���',			'067 333 88 98'),
	( 12, '��� Fifth Buyer', 	'�.г���', 			'067 555 88 98'),
	( 13, '��� Sixth Buyer', 	'�.г���', 			'067 876 78 98'),
	( 14, '��� Seventh Buyer', 	'�.г���', 			'067 546 88 78');
SET IDENTITY_INSERT Customer off;
	
SET IDENTITY_INSERT InputOrder on;
INSERT INTO InputOrder (Id, CustomerId, CreationTime, Cost, [Status]) VALUES
	( 1 , 1 , '2014-03-01 09:20:00',  2950.00, 1 ),
	( 2 , 2 , '2014-03-03 10:20:00', 24650.00, 1 ),
	( 3 , 3 , '2014-03-04 11:20:00',  7380.00, 1 ),
	( 4 , 4 , '2014-03-05 12:20:00',  3300.00, 1 ),
	( 5 , 5 , '2014-03-06 13:30:00',  7380.00, 1 ),
	( 6 , 6 , '2014-03-07 14:45:00',  4180.00, 0 ),
	( 7 , 7 , '2014-03-09 09:45:00', 33460.00, 0 ),
	( 8 , 1 , '2014-03-10 10:45:00',  4145.00, 2 ),
	( 9 , 2 , '2014-03-11 11:45:00',  4800.00, 2 ),
	( 10, 3 , '2014-03-12 14:45:00',  1622.00, 1 ),
	( 11, 4 , '2014-03-14 12:05:00',  2521.00, 1 ),
	( 12, 5 , '2014-03-15 10:15:00',  1584.00, 0 ),
	( 13, 6 , '2014-03-17 11:15:00',  2510.00, 1 ),
	( 14, 3 , '2014-03-18 14:15:00',  2100.00, 2 ),
	( 15, 5 , '2014-03-18 17:15:00',  2275.00, 2 );
SET IDENTITY_INSERT InputOrder off;

SET IDENTITY_INSERT InputOrderItem on; 
INSERT INTO InputOrderItem (Id, InputOrderId, PackageId, Quantity, UnitCost) VALUES
	(1 , 1 , 4 , 20,   30.50),
	(2 , 1 , 3 , 20,   25.00),
	(3 , 1 , 1 , 40,   23.50),
	(4 , 1 , 2 , 40,   22.50),
	(5 , 2 , 12, 50,  135.00),
	(6 , 2 , 14, 50,  208.00),
	(7 , 2 , 18, 50,  150.00),
	(8 , 2 , 24, 40,  165.00),
	(9 , 3 , 23, 10,  165.00),
	(10, 3 , 24, 10,  168.00),
	(11, 3 , 25, 10,  145.00),
	(12, 3 , 26, 20,  130.00),
	(13, 4 , 41, 100,  17.00),
	(14, 4 , 43, 100,   7.00),
	(15, 4 , 49, 100,   5.00),
	(16, 4 , 52, 100,   4.00),
	(17, 5 , 38, 10 , 228.00),
	(18, 5 , 42, 10 , 150.00),
	(19, 5 , 30, 10 , 215.00),
	(20, 5 , 25, 10 , 145.00),
	(21, 6 , 54, 110,  15.00),
	(22, 6 , 55, 110,  11.00),
	(23, 6 , 56, 120,  11.00),
	(24, 7 , 16, 80 , 135.00),
	(25, 7 , 17, 55 , 290.00),
	(26, 7 , 22, 40 ,  95.00),
	(27, 7 , 26, 15 , 134.00),
	(28, 7 , 31, 75 ,  12.00),
	(29, 8 , 15, 10,   81.00),
	(30, 8 , 18, 5 ,  165.00),
	(31, 8 , 23, 10,  165.00),
	(32, 8 , 30, 4 ,  215.00),
	(33, 9 , 38, 15,  220.00),
	(34, 9 , 42, 10,  150.00),
	(35, 10, 48, 14,   25.00),
	(36, 10, 50, 14,   10.00),
	(37, 10, 54, 12,   15.00),
	(38, 10, 40, 14,   68.00),
	(39, 11, 5 , 54,   10.00),
	(40, 11, 6 , 85,    4.20),
	(41, 11, 8 , 60,    2.40),
	(42, 11, 9 , 2 ,  740.00),
	(43, 12, 46, 14,   51.00),
	(44, 12, 48, 12,   24.00),
	(45, 12, 51, 74,    3.00),
	(46, 12, 53, 72,    5.00),
	(47, 13, 13, 5 ,  135.00),
	(48, 13, 15, 5 ,  135.00),
	(49, 13, 17, 4 ,  290.00),
	(50, 14, 7 , 1 , 2100.00),
	(51, 15, 23, 7,   160.00),
	(52, 15, 24, 7,   135.00);
SET IDENTITY_INSERT InputOrderItem off; 
	
SET IDENTITY_INSERT OutputOrder on;
INSERT INTO OutputOrder (Id, CustomerId, CreationTime, Cost, [Status]) VALUES
	( 1 ,  8 , '2014-03-23 00:00:00',  4445.00, 1 ),
	( 2 ,  9 , '2014-03-28 00:00:00',  2142.00, 1 ),
	( 3 ,  10, '2014-04-01 00:00:00',  1829.50, 1 ),
	( 4 ,  11, '2014-02-12 00:00:00',  1520.75, 1 ),
	( 5 ,  12, '2014-03-07 00:00:00',  1217.60, 0 ),
	( 6 ,  13, '2014-03-24 00:00:00',  2939.70, 0 ),
	( 7 ,  14, '2014-03-29 00:00:00',  5706.20, 0 ),
	( 8 ,  8 , '2014-03-05 00:00:00',  2680.30, 2 ),
	( 9 ,  10, '2014-03-15 00:00:00',  5025.00, 2 ),
	( 10,  10, '2014-03-16 00:00:00', 10452.00, 2 ),
	( 11,  12, '2014-03-09 00:00:00',   251.80, 1 ),
	( 12,  14, '2014-03-30 00:00:00',  1820.80, 1 ),
	( 13,  10, '2014-03-30 00:00:00',  2995.00, 1 ),
	( 14,  10, '2014-04-01 00:00:00',  1517.85, 1 ),
	( 15,  8 , '2014-04-02 00:00:00',  2107.62, 1 );
SET IDENTITY_INSERT OutputOrder off;
	
SET IDENTITY_INSERT OutputOrderItem on;
INSERT INTO OutputOrderItem (Id, OutputOrderId, PackageId, Quantity, UnitCost) VALUES
	( 1 ,  1, 17, 4 , 1179.60),
	( 2 ,  1, 19, 8 ,  199.90),
	( 3 ,  1, 23, 10,  166.00),
	( 4 ,  1, 51, 2 ,    3.10),
	( 5 ,  2, 18, 5 ,  169.90),
	( 6 ,  2, 32, 20,   17.99),
	( 7 ,  2, 42, 3 ,  159.90),
	( 8 ,  2, 11, 15,   30.20),
	( 9 ,  3, 2 , 10,   23.50),
	( 10,  3, 15, 8 ,  137.90),
	( 11,  3, 36, 4 ,   83.90),
	( 12,  3, 47, 3 ,   51.90),
	( 13,  4, 10, 5 ,   24.13),
	( 14,  4, 34, 10,   26.15),
	( 15,  4, 54, 10,   15.90),
	( 16,  4, 35, 4 ,  244.90),
	( 17,  5, 38, 4 ,  229.00),
	( 18,  5, 44, 4 ,   45.90),
	( 19,  5, 53, 20,    5.90),
	( 20,  6, 11, 7 ,   30.20),
	( 21,  6, 21, 4 ,   59.90),
	( 22,  6, 36, 18,   83.90),
	( 23,  6, 46, 15,   51.90),
	( 24,  6, 52, 20,    4.10),
	( 25,  6, 53, 20,    5.90),
	( 26,  7, 4 , 10,   31.50),
	( 27,  7, 7 , 2 , 2121.60),
	( 28,  7, 23, 5 ,  166.00),
	( 29,  7, 33, 20,   15.90),
	( 30,  8, 12, 8 ,  209.00),
	( 31,  8, 28, 40,    5.22),
	( 32,  8, 42, 5 ,  159.90),
	( 33,  9, 23, 15,  166.00),
	( 34,  9, 24, 15,  169.00),
	( 35, 10, 30, 20,  219.00),
	( 36, 10, 35, 15,  244.90),
	( 37, 10, 42, 15,  159.90),
	( 38, 11, 31, 8 ,   12.20),
	( 39, 11, 43, 8 ,    7.90),
	( 40, 11, 53, 8 ,    5.90),
	( 41, 11, 57, 5 ,   13.50),
	( 42, 12, 13, 5 ,  309.00),
	( 43, 12, 12, 2 ,  137.90),
	( 44, 13, 21, 50,   59.90),
	( 45, 14, 15, 2 ,  137.90),
	( 46, 14, 31, 10,   12.28),
	( 47, 14, 37, 15,   29.55),
	( 48, 14, 24, 4 ,  169.00),
	( 49, 15, 13, 2 ,  309.00),
	( 50, 15, 26, 4 ,  135.00),
	( 51, 15, 35, 3 ,  244.90),
	( 52, 15, 41, 12,   17.91);
SET IDENTITY_INSERT OutputOrderItem off;

SET IDENTITY_INSERT Warehouse on;
INSERT INTO Warehouse (Id, [Address]) VALUES
	(1, 'г���, �����������, 25'),
	(2, 'г���, ��.�������, 50'),
	(3, 'г���, �������, 1');
SET IDENTITY_INSERT Warehouse off;

SET IDENTITY_INSERT WarehouseItem on;
INSERT INTO WarehouseItem (Id, WarehouseId, PackageId, Quantity) VALUES
	(1 ,  1, 1 ,  50  ),     
	(2 ,  1, 2 ,  100 ),     
	(3 ,  1, 3 ,  241 ),     
	(4 ,  1, 4 ,  784 ), 	
	(5 ,  1, 5 ,  14  ), 	
	(6 ,  1, 6 ,  57  ), 		
	(7 ,  1, 7 ,  74  ), 	
	(8 ,  1, 8 ,  45  ), 		
	(9 ,  1, 9 ,  41  ), 	
	(10,  2, 10,  247 ), 	
	(11,  2, 11,  11  ), 	
	(12,  2, 12,  40  ), 	
	(13,  2, 13,  70  ), 	
	(14,  2, 14,  40  ), 	
	(15,  2, 15,  121 ), 	
	(16,  2, 16,  15  ), 	
	(17,  3, 17,  74  ), 	
	(18,  3, 18,  17  ), 	
	(19,  3, 19,  333 ), 	
	(20,  3, 20,  54  ), 		
	(21,  3, 21,  77  ), 	
	(22,  3, 22,  66  ), 	
	(23,  3, 23,  358 ), 	
	(24,  3, 24,  41  ), 	
	(25,  3, 25,  18  ), 	
	(26,  3, 26,  50  ), 	
	(27,  1, 27,  0   ), 	
	(28,  1, 28,  241 ), 		
	(29,  1, 29,  784 ), 	
	(30,  1, 30,  14  ), 	
	(31,  1, 31,  57  ), 	
	(32,  1, 32,  74  ), 	
	(33,  1, 33,  45  ), 	
	(34,  1, 34,  100 ), 	
	(35,  1, 35,  247 ), 	
	(36,  1, 36,  11  ), 	
	(37,  1, 37,  40  ), 	
	(38,  2, 38,  70  ), 	
	(39,  2, 39,  40  ), 	
	(40,  2, 40,  121 ), 	
	(41,  2, 41,  15  ), 	
	(42,  1, 42,  74  ), 	
	(43,  1, 43,  17  ), 		
	(44,  1, 44,  333 ), 	
	(45,  1, 45,  54  ), 	
	(46,  1, 46,  77  ), 	
	(47,  1, 47,  66  ), 	
	(48,  1, 48,  0	  ), 	
	(49,  1, 49,  41  ), 		
	(50,  1, 50,  18  ), 	
	(51,  2, 51,  11  ), 		
	(52,  2, 52,  40  ), 		
	(53,  2, 53,  70  ), 		
	(54,  2, 54,  40  ), 	
	(55,  2, 55,  121 ), 	
	(56,  2, 56,  15  ), 	
	(57,  2, 57,  74  ); 	
SET IDENTITY_INSERT WarehouseItem off;