CREATE PROCEDURE usp_CHG_CUST_EMAIL
@custid decimal (6,0),
@email char (25)
AS
UPDATE CUSTOMERS
SET EMAIL = @email
WHERE CUST_ID = @custid
GO

CREATE PROCEDURE usp_CHG_EMP_POSITION
@empid decimal (6,0),
@position char(25)
AS
UPDATE EMPLOYEES
SET POSITION = @position
WHERE EMP_ID = @empid
GO

CREATE PROCEDURE usp_CHG_INV_PRICE
@itemid char (5),
@price decimal (6,2)
AS
UPDATE INVENTORY
SET PRICE = @price
WHERE ITEM_ID = @itemid
GO

CREATE PROCEDURE usp_CHG_INVOICE_DELIVDATE
@ordernum decimal (10,0),
@delivdate char (8)
AS
UPDATE INVOICE
SET EST_DELIVERY_DATE = @delivdate
WHERE ORDER_NUM = @ordernum
GO