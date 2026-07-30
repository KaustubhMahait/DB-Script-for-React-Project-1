

--- 1 



--CREATE TABLE tbl_RUsers
--(
--    UserID INT IDENTITY(1,1) PRIMARY KEY,    
--    Username VARCHAR(255),
--    Password VARCHAR(255),
--	Email VARCHAR(255),
--    FirstName VARCHAR(255),
--	LastName VARCHAR(255)
--);

-- select * from tbl_RUsers

--- 2

--ALTER PROCEDURE USP_InsertRUsers
--(
--    @FirstName VARCHAR(255),
--    @LastName VARCHAR(255),
--    @Email VARCHAR(255),
--    @Password VARCHAR(255),
--    @Username VARCHAR(255)
--)
--AS
--BEGIN
--    SET NOCOUNT ON;

--    -- Check if Email already exists
--    IF EXISTS
--    (
--        SELECT 1
--        FROM tbl_RUsers
--        WHERE Email = @Email
--    )
--    BEGIN

--        SELECT 0 AS Status,'Email already exists.' AS Message, NULL AS PersonID;

--        RETURN;
--    END

--    -- Insert Record
--    INSERT INTO tbl_RUsers
--    (
--        FirstName,
--        LastName,
--        Email,
--        Password,
--        Username
--    )
--    VALUES
--    (
--        @FirstName,
--        @LastName,
--        @Email,
--        @Password,
--        @Username
--    );

--    -- Success Response
--    SELECT 1 AS Status ;
--END


select * from tbl_RUsers


-- truncate table tbl_RUsers


CREATE PROCEDURE USP_LoginRUsers
(    
    @Email VARCHAR(255),
    @Password VARCHAR(255)    
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if Email already exists
    IF EXISTS ( SELECT 1 FROM tbl_RUsers WHERE Email = @Email and [Password] = @Password )
    BEGIN
		
		SELECT 1 AS Status 
        
    END
	else
	begin
			SELECT 0 AS Status 
	end    
    
END

