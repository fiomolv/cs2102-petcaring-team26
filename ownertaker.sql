DROP TABLE IF EXISTS Owners;
DROP TABLE IF EXISTS Caretakers;
DROP TABLE IF EXISTS Requests;

-- Owner table:
CREATE TABLE Owners (
	oid INTEGER,
	oname VARCHAR(10),
	pkind VARCHAR(10),
	pname VARCHAR(10),
	contactNumber VARCHAR(10),
	PRIMARY KEY (oid)
);

INSERT INTO Owners (oid, oname, pkind, pname, contactNumber)
VALUES (1, 'Alice', 'Eskimo', 'Bella', '81239456');

INSERT INTO Owners (oid, oname, pkind, pname, contactNumber)
VALUES (2, 'Bob', 'Bulldog', 'Max', '84327543');

INSERT INTO Owners (oid, oname, pkind, pname, contactNumber)
VALUES (3, 'Charles', 'Akita', 'Chole', '83736485');

INSERT INTO Owners (oid, oname, pkind, pname, contactNumber)
VALUES (4, 'Dekins', 'Malamute', 'Sophie', '88753345');

INSERT INTO Owners (oid, oname, pkind, pname, contactNumber)
VALUES (5, 'Emily', 'Cannan', 'Toby', '92637655');

INSERT INTO Owners (oid, oname, pkind, pname, contactNumber)
VALUES (6, 'Frod', 'Cocker', 'Bailey', '87769425');

INSERT INTO Owners (oid, oname, pkind, pname,contactNumber)
VALUES (7, 'George', 'Spitz', 'Duke', '89975556');

INSERT INTO Owners (oid, oname, pkind, pname, contactNumber)
VALUES (8, 'Henrry', 'Pinscher', 'Cooper', '99764456');

INSERT INTO Owners (oid, oname, pkind, pname, contactNumber)
VALUES (9,'Junia', 'Harrier', 'Gracie', '99874263');

INSERT INTO Owners (oid, oname, pkind, pname, contactNumber)
VALUES (10, 'Kelly', 'Keeshond', 'Murphy','92351167');

-- Care taker table
CREATE TABLE Caretakers (
	cid INTEGER UNIQUE,
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
	status BIT,
	PRIMARY KEY (oid, cid),
	FOREIGN KEY (oid) REFERENCES Owners(oid),
	FOREIGN KEY (cid) REFERENCES Caretakers(cid)
);

INSERT INTO Requests (oid, cid, status)
VALUES (1, 1, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (2, 1, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (3, 1, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (4, 1, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (5, 1, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (6, 1, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (7, 1, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (8, 1, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (9, 1, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (10, 1, CAST(1 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (1, 2, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (2, 2, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (3, 2, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (4, 2, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (5, 2, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (6, 2, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (7, 2, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (8, 2, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (9, 2, CAST(1 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (10, 2, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (1, 3, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (2, 3, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (3, 3, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (4, 3, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (5, 3, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (6, 3, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (7, 3, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (8, 3, CAST(1 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (9, 3, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (10, 3, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (1, 4, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (2, 4, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (3, 4, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (4, 4, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (5, 4, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (6, 4, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (7, 4, CAST(1 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (8, 4, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (9, 4, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (10, 4, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (1, 5, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (2, 5, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (3, 5, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (4, 5, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (5, 5, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (6, 5, CAST(1 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (7, 5, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (8, 5, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (9, 5, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (10, 5, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (1, 6, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (2, 6, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (3, 6, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (4, 6, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (5, 6, CAST(1 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (6, 6, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (7, 6, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (8, 6, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (9, 6, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (10, 6, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (1, 7, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (2, 7, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (3, 7, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (4, 7, CAST(1 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (5, 7, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (6, 7, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (7, 7, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (8, 7, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (9, 7, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (10, 7, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (1, 8, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (2, 8, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (3, 8, CAST(1 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (4, 8, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (5, 8, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (6, 8, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (7, 8, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (8, 8, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (9, 8, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (10, 8, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (1, 9, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (2, 9, CAST(1 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (3, 9, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (4, 9, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (5, 9, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (6, 9, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (7, 9, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (8, 9, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (9, 9, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (10, 9, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (1, 10, CAST(1 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (2, 10, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (3, 10, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (4, 10, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (5, 10, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (6, 10, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (7, 10, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (8, 10, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (9, 10, CAST(0 AS BIT));

INSERT INTO Requests (oid, cid, status)
VALUES (10, 10, CAST(0 AS BIT));