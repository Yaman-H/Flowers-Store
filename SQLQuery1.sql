-- Delete a row from the table
DELETE FROM Payment WHERE Id = @rowId

-- Reset the identity value to the current maximum value minus one
DBCC CHECKIDENT('Payment', RESEED, (SELECT MAX(Id) FROM Payment) - 1)