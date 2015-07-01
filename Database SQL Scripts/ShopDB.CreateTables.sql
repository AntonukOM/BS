create database ShopDB
use ShopDB

create table Producer(
	Id int not null identity(1, 1),
	Name nvarchar(64) default 'unknown',
	[Address] nvarchar(512) default 'unkown',
	Phone nvarchar(64)

	constraint pk_producer_id primary key(Id)
);

create table Category(
	Id int not null identity(1, 1),
	Name nvarchar(128) default 'unknown',
	ParentId int

	constraint pk_category_id primary key(Id),
	constraint fk_category_parentId_id 
	foreign key (ParentId) references Category(Id)
);

create table Product(
	Id int not null identity(1, 1),
	Name nvarchar(64) not null,
	CategoryId int not null,
	ProducerId int not null

	constraint pk_product_id primary key(Id),
	constraint fk_product_categoryId_category_id
		foreign key (CategoryId) references Category(Id),
	constraint fk_product_producerId_producer_id
		foreign key (ProducerId) references Producer(Id)
);

create table Measure(
	Id int not null identity(1, 1),
	ShortName nvarchar(16) not null,
	Name nvarchar(128) not null

	constraint pk_measure_id primary key(Id)
);

create table Package(
	Id int not null identity(1, 1),
	ProductId int not null,
	VolumeMeasureId int not null,
	MeasureId int not null,
	Volume numeric(18, 4) not null

	constraint pk_package_id primary key(Id),
	constraint fk_package_productId_product_id
		foreign key (ProductId) references Products(Id) on delete cascade,
	constraint fk_packege_volumeMeasureId_measure_id
		foreign key (VolumeMeasureId) references Measure(Id),	
	constraint fk_package_measureId_measure_id
		foreign key (MeasureId) references Measure(Id),
);


create table Price(
	Id int not null identity(1, 1),
	PackageId int not null,
	UnitCost numeric(18, 4) not null,
	PriceTime datetime not null

	constraint pk_price_id primary key(Id),
	constraint fk_price_productPackageId_package_id
		foreign key (PackageId) references Package(Id)
);


--ORDERS STAGE
create table Customer(
	Id int not null identity(1, 1),
	Name nvarchar(512) not null,
	[Address] nvarchar(512) null,
	Phone nvarchar(64) default null

	constraint pk_customer_id primary key(Id),
);

create table InputOrder(
	Id int not null identity(1, 1),
	CustomerId int not null,
	CreationTime datetime not null,
	Cost numeric(18, 4),
	[Status] int not null

	constraint pk_inputOrder_id primary key(Id),
	constraint fk_inputOrder_customerId_customer_id
		foreign key (CustomerId) references Customer(Id)
);


create table InputOrderItem(
	Id int not null identity(1, 1),
	InputOrderId int not null,
	PackageId int not null,
	Quantity numeric(18, 4) not null,
	UnitCost numeric(18, 4) not null

	constraint pk_inputOrderItem_id primary key(Id),
	constraint fk_inputOrderItem_inputOrderId_inputOrder_Id
		foreign key (InputOrderId) references InputOrder(Id),
	constraint fk_inputOrderItem_packageId_package_id
		foreign key (PackageId) references Package(Id)
);

create table OutputOrder(
	Id int not null identity(1, 1),
	CustomerId int not null,
	CreationTime datetime not null,
	Cost numeric not null,
	[Status] int not null

	constraint pk_outputOrder_id primary key(Id),
	constraint fk_outputOrder_customerId_customer_id
		foreign key (CustomerId) references Customer(Id)
);

create table OutputOrderItem(
	Id int not null identity(1 ,1),
	OutputOrderId int not null,
	PackageId int not null,
	Quantity numeric(18, 4) not null,
	UnitCost numeric(18, 4) not null

	constraint pk_outputOrderItem_id primary key(Id),
	constraint fk_outputOrderItem_outputOrderId_outputOrder_id
		foreign key (OutputOrderId) references OutputOrder(Id),
	constraint fk_outputOrderItem_packageId_package_id
		foreign key (PackageId) references Package(Id)
);

--WAREHOUSE STAGE
create table Warehouse(
	Id int not null identity(1, 1),
	[Address] nvarchar(512) null

	constraint pk_warehouse_id primary key(Id)
);

create table WarehouseItem(
	Id int not null identity(1, 1),
	WarehouseId int not null,
	PackageId int not null,
	Quantity numeric(18, 4) not null

	constraint pk_warehouseItem_id primary key(id),
	constraint fk_warehouseItem_warehouseId_warehouse_id
		foreign key (WarehouseId) references Warehouse(Id),
	constraint fk_warehouseItem_packageId_package_id
		foreign key (PackageId) references Package(Id)
);