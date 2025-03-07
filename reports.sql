-- List of Borrowed Books
SELECT bb.BorrowID, b.Title, m.Name, bb.BorrowDate, bb.Status
FROM BorrowedBooks bb
JOIN Books b ON bb.BookID = b.BookID
JOIN Members m ON bb.MemberID = m.MemberID
WHERE bb.Status = 'Borrowed';

-- Books Borrowed by a Specific Member
SELECT b.Title, bb.BorrowDate, bb.ReturnDate, bb.Status
FROM BorrowedBooks bb
JOIN Books b ON bb.BookID = b.BookID
WHERE bb.MemberID = 1;
