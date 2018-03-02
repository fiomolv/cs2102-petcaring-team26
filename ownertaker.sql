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


