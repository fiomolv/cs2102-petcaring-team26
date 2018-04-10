DROP TABLE IF EXISTS Owners, Caretakers, Pets, Owns, Requests;

-- Owner table:
CREATE TABLE Owners (
	oid INTEGER,
	oname VARCHAR(10),
	contactNumber VARCHAR(10),
	PRIMARY KEY (oid)
);

INSERT INTO Owners (oid, oname, contactNumber)
VALUES (1, 'Alice', '81239456');

INSERT INTO Owners (oid, oname, contactNumber)
VALUES (2, 'Bob', '84327543');

INSERT INTO Owners (oid, oname, contactNumber)
VALUES (3, 'Charles', '83736485');

INSERT INTO Owners (oid, oname, contactNumber)
VALUES (4, 'Dekins', '88753345');

INSERT INTO Owners (oid, oname, contactNumber)
VALUES (5, 'Emily', '92637655');

INSERT INTO Owners (oid, oname, contactNumber)
VALUES (6, 'Frod', '87769425');

INSERT INTO Owners (oid, oname, contactNumber)
VALUES (7, 'George', '89975556');

INSERT INTO Owners (oid, oname, contactNumber)
VALUES (8, 'Henrry', '99764456');

INSERT INTO Owners (oid, oname, contactNumber)
VALUES (9, 'Junia', '99874263');

INSERT INTO Owners (oid, oname, contactNumber)
VALUES (10, 'Kelly', '92351167');

-- Pets table
CREATE TABLE Pets (
	pid INTEGER,
	pkind VARCHAR(50),
	pname VARCHAR(50),
	PRIMARY KEY (pid)
);

INSERT INTO Pets (pid, pkind, pname)
VALUES (1, 'Eskimo', 'Bella');

INSERT INTO Pets (pid, pkind, pname)
VALUES (2, 'Bulldog', 'Max');

INSERT INTO Pets (pid, pkind, pname)
VALUES (3, 'Akita', 'Chole');

INSERT INTO Pets (pid, pkind, pname)
VALUES (4, 'Malamute', 'Sophie');

INSERT INTO Pets (pid, pkind, pname)
VALUES (5, 'Cannan', 'Max');

INSERT INTO Pets (pid, pkind, pname)
VALUES (6, 'Cocker', 'Baily');

INSERT INTO Pets (pid, pkind, pname)
VALUES (7, 'Pincer', 'Duke');

INSERT INTO Pets (pid, pkind, pname)
VALUES (8, 'Cocker', 'Cooker');

INSERT INTO Pets (pid, pkind, pname)
VALUES (9, 'Harrier', 'Gracier');

INSERT INTO Pets (pid, pkind, pname)
VALUES (10, 'Keeshond', 'Murphy');

CREATE TABLE Owns (
pid INTEGER,
oid INTEGER,
PRIMARY KEY (pid, oid),
FOREIGN KEY (pid) REFERENCES Pets(pid),
FOREIGN KEY (oid) REFERENCES Owners(oid)
);

INSERT INTO Owns (oid, pid)
VALUES (1, 1);

INSERT INTO Owns (oid, pid)
VALUES (2, 2);

INSERT INTO Owns (oid, pid)
VALUES (3, 3);

INSERT INTO Owns (oid, pid)
VALUES (4, 4);

INSERT INTO Owns (oid, pid)
VALUES (5, 5);

INSERT INTO Owns (oid, pid)
VALUES (6, 6);

INSERT INTO Owns (oid, pid)
VALUES (7, 7);

INSERT INTO Owns (oid, pid)
VALUES (8, 8);

INSERT INTO Owns (oid, pid)
VALUES (9, 9);

INSERT INTO Owns (oid, pid)
VALUES (10, 10);

-- Care taker table
CREATE TABLE Caretakers (
	cid INTEGER,
	cname VARCHAR(10),
	startdate DATE,
	enddate DATE,
	pkind VARCHAR(10),
	contactNumber VARCHAR(10),
	PRIMARY KEY (cid, pkind)
);

INSERT INTO Caretakers (cid, cname, startdate, enddate, pkind, contactNumber)
VALUES (1, 'Lucy', '2018-06-04', '2018-06-05','Keeshond', '87658876');

INSERT INTO Caretakers (cid, cname, startdate, enddate, pkind, contactNumber)
VALUES (2, 'Marry', '2018-06-04', '2018-06-08','Harrier', '87762432');

INSERT INTO Caretakers (cid, cname, startdate, enddate, pkind, contactNumber)
VALUES (3, 'Naughty', '2018-06-05', '2018-12-09','Spitz', '87763235');

INSERT INTO Caretakers (cid, cname, startdate, enddate, pkind, contactNumber)
VALUES (4, 'Nur', '2018-07-21', '2018-08-01','Pinscher', '92137883');

INSERT INTO Caretakers (cid, cname, startdate, enddate, pkind, contactNumber)
VALUES (5, 'Peter', '2018-08-04', '2019-02-04','Cocker', '92237889');

INSERT INTO Caretakers (cid, cname, startdate, enddate, pkind, contactNumber)
VALUES (6, 'Quota', '2018-06-09', '2018-09-05','Cannan', '89102362');

INSERT INTO Caretakers (cid, cname, startdate, enddate, pkind, contactNumber)
VALUES (7, 'Raffles', '2018-07-04', '2018-10-05','Malamute', '82536889');

INSERT INTO Caretakers (cid, cname, startdate, enddate, pkind, contactNumber)
VALUES (8, 'Richard', '2019-01-04', '2019-05-05','Akita', '89226332');

INSERT INTO Caretakers (cid, cname, startdate, enddate, pkind, contactNumber)
VALUES (9, 'Stephen', '2018-08-04', '2018-08-05','Bulldog', '89962234');

INSERT INTO Caretakers (cid, cname, startdate, enddate, pkind, contactNumber)
VALUES (10, 'Tim', '2018-07-05', '2018-12-05','Eskimo', '68823113');

-- Requests: TO BE CREATED
CREATE TABLE Requests (
	oid INTEGER,
	cid INTEGER,
	bid INTEGER,
	status BIT,
	PRIMARY KEY (oid, cid),
	FOREIGN KEY (oid) REFERENCES Owners(oid),
	FOREIGN KEY (cid) REFERENCES Caretakers(cid)
);

INSERT INTO Requests (oid, cid, bid, status)
VALUES (1, 1, 30, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (2, 1, 20, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (3, 1, 47, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (4, 1, 52, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (5, 1, 65, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (6, 1, 78, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (7, 1, 94, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (8, 1, 120, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (9, 1, 350, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (10, 1, 21, CAST(1 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (1, 2, 65, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (2, 2, 43, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (3, 2, 872, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (4, 2, 36, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (5, 2, 4, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (6, 2, 7, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (7, 2, 98, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (8, 2, 452, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (9, 2, 76, CAST(1 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (10, 2, 45, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (1, 3, 34, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (2, 3, 72, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (3, 3, 90, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (4, 3, 34, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (5, 3, 36, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (6, 3, 78, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (7, 3, 34, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (8, 3, 56, CAST(1 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (9, 3, 73, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (10, 3, 24, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (1, 4, 41, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (2, 4, 56, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (3, 4, 12, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (4, 4, 33, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (5, 4, 57, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (6, 4, 65, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (7, 4, 71, CAST(1 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (8, 4, 33, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (9, 4, 457, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (10, 4, 682, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (1, 5, 10, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (2, 5, 44, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (3, 5, 29, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (4, 5, 234, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (5, 5, 654, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (6, 5, 322, CAST(1 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (7, 5, 122, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (8, 5, 447, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (9, 5, 78, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (10, 5, 34, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (1, 6, 33, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (2, 6, 456, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (3, 6, 32, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (4, 6, 22, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (5, 6, 34, CAST(1 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (6, 6, 87, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (7, 6, 33, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (8, 6, 22, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (9, 6, 24, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (10, 6, 98, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (1, 7, 67, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (2, 7, 23, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (3, 7, 21, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (4, 7, 55, CAST(1 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (5, 7, 36, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (6, 7, 89, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (7, 7, 35, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (8, 7, 88, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (9, 7, 32, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (10, 7, 123, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (1, 8, 256, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (2, 8, 322, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (3, 8, 234, CAST(1 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (4, 8, 516, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (5, 8, 333, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (6, 8, 678, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (7, 8, 865, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (8, 8, 11, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (9, 8, 145, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (10, 8, 651, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (1, 9, 74, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (2, 9, 13, CAST(1 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (3, 9, 6, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (4, 9, 90, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (5, 9, 23, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (6, 9, 76, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (7, 9, 83, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (8, 9, 231, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (9, 9, 365, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (10, 9, 542, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (1, 10, 22, CAST(1 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (2, 10, 378, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (3, 10, 45, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (4, 10, 910, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (5, 10, 350, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (6, 10, 12, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (7, 10, 520, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (8, 10, 222, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (9, 10, 315, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, bid, status)
VALUES (10, 10, 25, CAST(0 AS BIT));
