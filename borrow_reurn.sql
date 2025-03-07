-- Borrow a Book
INSERT INTO BorrowedBooks (BookID, MemberID, BorrowDate)
VALUES (1, 1, CURDATE());

-- Return a Book
UPDATE BorrowedBooks 
SET ReturnDate = CURDATE(), Status = 'Returned' 
WHERE BorrowID = 1;
