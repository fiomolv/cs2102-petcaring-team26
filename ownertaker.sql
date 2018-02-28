DROP TABLE IF EXISTS Owners
DROP TABLE IF EXISTS Caretakers
-- Owner table:
CREATE TABLE Owners (
	oname VARCHAR(10),
	pkind VARCHAR(10),
	pname VARCHAR(10),
	PRIMARY KEY (oname),
	FOREIGN KEY (pkind) REFERENCES Caretaker (pkind)
);

INSERT INTO Owners (oname, pkind, pname)
VALUES ('Alice', 'Eskimo', 'Bella');

INSERT INTO Owners (oname, pkind, pname)
VALUES ('Bob', 'Bulldog', 'Max');

INSERT INTO Owners (oname, pkind, pname)
VALUES ('Charles', 'Akita', 'Chole');

INSERT INTO Owners (oname, pkind, pname)
VALUES ('Dekins', 'Malamute', 'Sophie');

INSERT INTO Owners (oname, pkind, pname)
VALUES ('Emily', 'Cannan', 'Toby');

INSERT INTO Owners (oname, pkind, pname)
VALUES ('Frod', 'Cocker', 'Bailey');

INSERT INTO Owners (oname, pkind, pname)
VALUES ('George', 'Spitz', 'Duke');

INSERT INTO Owners (oname, pkind, pname)
VALUES ('Henrry', 'Pinscher', 'Cooper');

INSERT INTO Owners (oname, pkind, pname)
VALUES ('Junia', 'Harrier', 'Gracie');

INSERT INTO Owners (oname, pkind, pname)
VALUES ('Kelly', 'Keeshond', 'Murphy');

-- Care taker table
CREATE TABLE Caretakers (
	cname VARCHAR(10),
	startdate DATE,
	enddate DATE,
	pkind VARCHAR(10),
	PRIMARY KEY (cname, pkind)
);

INSERT INTO Caretakers (oname, startdate, enddate, pkind)
VALUES ('Lucy', '2018-06-04', '2018-06-05','Keeshond');

INSERT INTO Caretakers (oname, startdate, enddate, pkind)
VALUES ('Marry', '2018-06-04', '2018-06-08','Harrier');

INSERT INTO Caretakers (oname, startdate, enddate, pkind)
VALUES ('Naughty', '2018-06-05', '2018-12-09','Spitz');

INSERT INTO Caretakers (oname, startdate, enddate, pkind)
VALUES ('Nur', '2018-07-21', '2018-08-01','Pinscher');

INSERT INTO Caretakers (oname, startdate, enddate, pkind)
VALUES ('Peter', '2018-08-04', '2019-02-04','Cocker');

INSERT INTO Caretakers (oname, startdate, enddate, pkind)
VALUES ('Quota', '2018-06-09', '2018-09-05','Cannan');

INSERT INTO Caretakers (oname, startdate, enddate, pkind)
VALUES ('Raffles', '2018-07-04', '2018-10-05','Malamute');

INSERT INTO Caretakers (oname, startdate, enddate, pkind)
VALUES ('Richard', '2019-01-04', '2019-05-05','Akita');

INSERT INTO Caretakers (oname, startdate, enddate, pkind)
VALUES ('Stephen', '2018-08-04', '2018-08-05','Bulldog');

INSERT INTO Caretakers (oname, startdate, enddate, pkind)
VALUES ('Tim', '2018-07-05', '2018-12-05','Eskimo');

-- Requests: TO BE CREATED

