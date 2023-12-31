CREATE TABLE BOOKS(
BOOKID INT PRIMARY KEY,
TITLE VARCHAR(50),
AUTHOR VARCHAR(50),
PUBLISHER VARCHAR(50),
ISBN NUMBER,
GENRE VARCHAR(25),
AVAILABILTY VARCHAR(5));
CREATE TABLE BORROWERS(
BORROWERID INT PRIMARY KEY,
BORROWERNAME VARCHAR(25),
ADDRESS VARCHAR(200),
PHONENUMBER VARCHAR(20),
EMAIL VARCHAR(100));
CREATE TABLE LOANS(
LOANID INT PRIMARY KEY,
BOOKID INT,
BORROWERID INT,
DATEBORROWED DATE,
DUEDATE DATE,
DATERETURNED DATE,
FOREIGN KEY(BOOKID)REFERENCES BOOKS(BOOKID),
FOREIGN KEY(BORROWERID)REFERENCES BORROWERS(BORROWERID));
CREATE TABLE RESERVATIONS(
RESERVATIONID INT,
BOOKID INT,
BORROWERID INT,
DATERESERVED DATE,
DATENEEDED DATE,
STATUS VARCHAR(10),
FOREIGN KEY(BOOKID)REFERENCES BOOKS(BOOKID),
FOREIGN KEY(BORROWERID)REFERENCES BORROWERS(BORROWERID));
