use ShopDB
delete from WarehouseItem
delete from Warehouse
delete from OutputOrderItem
delete from InputOrderItem
delete from OutputOrder
delete from InputOrder
delete from Customer
delete from Price
delete from Package
delete from Product
delete from Category
delete from Producer
delete from Measure

DBCC CHECKIDENT ('WarehouseItem',RESEED, 0)
DBCC CHECKIDENT ('Warehouse',RESEED, 0)
DBCC CHECKIDENT ('OutputOrderItem',RESEED, 0)
DBCC CHECKIDENT ('InputOrderItem',RESEED, 0)
DBCC CHECKIDENT ('OutputOrder',RESEED, 0)
DBCC CHECKIDENT ('InputOrder',RESEED, 0)
DBCC CHECKIDENT ('Customer',RESEED, 0)
DBCC CHECKIDENT ('Price',RESEED, 0)
DBCC CHECKIDENT ('Package',RESEED, 0)
DBCC CHECKIDENT ('Product',RESEED, 0)
DBCC CHECKIDENT ('Category',RESEED, 0)
DBCC CHECKIDENT ('Producer',RESEED, 0)
DBCC CHECKIDENT ('Measure',RESEED, 0)