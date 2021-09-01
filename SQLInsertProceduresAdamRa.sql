CREATE PROCEDURE usp_INS_CUSTOMER
@custid decimal (6,0),
@firstname char(10),
@lastname char(10),
@address char (25),
@state char (2),
@city char (25),
@email char (25),
@vip char (3)
AS
INSERT INTO CUSTOMERS
(CUST_ID, FIRST_NAME, LAST_NAME, ADDRESS, STATE, CITY, EMAIL, VIP_STATUS)
VALUES
(@custid,@firstname,@lastname,@address,@state,@city,@email,@vip)
GO

CREATE PROCEDURE usp_INS_EMPLOYEES
@empid decimal (6,0),
@firstname char(10),
@lastname char (10),
@hrswork decimal (4,0),
@position char (25)
AS
INSERT INTO EMPLOYEES
(EMP_ID, FIRST_NAME, LAST_NAME, HRS_WORKED_BIWEEKLY, POSITION)
VALUES
(@empid,@firstname,@lastname,@hrswork,@position)
GO

CREATE PROCEDURE usp_INS_INVENTORY
@itemid char (5),
@partname char (25),
@parttype char (10),
@instock decimal (4,0),
@price decimal (6,2)
AS
INSERT INTO INVENTORY
(ITEM_ID,PART_NAME,PART_TYPE,IN_STOCK,PRICE)
VALUES
(@itemid,@partname,@parttype,@instock,@price)
GO

CREATE PROCEDURE usp_INS_INVOICE
@ordernum decimal (10,0),
@dateorder char (8),
@custid decimal (6,0),
@totalprice decimal (6,2),
@estdelivdate char (8)
AS
INSERT INTO INVOICE
(ORDER_NUM,DATE_ORDERED,CUST_ID,TOTAL_PRICE,EST_DELIVERY_DATE)
VALUES
(@ordernum,@dateorder,@custid,@totalprice,@estdelivdate)
GO