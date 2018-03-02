-- Owner table:
CREATE TABLE Owners (
	oname VARCHAR(10),
	pkind VARCHAR(10),
	pname VARCHAR(10),
	contactNumber VARCHAR(10),
	PRIMARY KEY (oname)
);

INSERT INTO Owners (oname, pkind, pname, contactNumber)
VALUES ('Alice', 'Eskimo', 'Bella', '81239456');

INSERT INTO Owners (oname, pkind, pname, contactNumber)
VALUES ('Bob', 'Bulldog', 'Max', '84327543');

INSERT INTO Owners (oname, pkind, pname, contactNumber)
VALUES ('Charles', 'Akita', 'Chole', '83736485');

INSERT INTO Owners (oname, pkind, pname, contactNumber)
VALUES ('Dekins', 'Malamute', 'Sophie', '88753345');

INSERT INTO Owners (oname, pkind, pname, contactNumber)
VALUES ('Emily', 'Cannan', 'Toby', '92637655');

INSERT INTO Owners (oname, pkind, pname, contactNumber)
VALUES ('Frod', 'Cocker', 'Bailey', '87769425');

INSERT INTO Owners (oname, pkind, pname,contactNumber)
VALUES ('George', 'Spitz', 'Duke', '89975556');

INSERT INTO Owners (oname, pkind, pname, contactNumber)
VALUES ('Henrry', 'Pinscher', 'Cooper', '99764456');

INSERT INTO Owners (oname, pkind, pname, contactNumber)
VALUES ('Junia', 'Harrier', 'Gracie', '99874263');

INSERT INTO Owners (oname, pkind, pname, contactNumber)
VALUES ('Kelly', 'Keeshond', 'Murphy','92351167');

-- Care taker table
CREATE TABLE Caretakers (
	cname VARCHAR(10),
	startdate DATE,
	enddate DATE,
	pkind VARCHAR(10),
	contactNumber VARCHAR(8),
	PRIMARY KEY (cname, pkind)
);

INSERT INTO Caretakers (cname, startdate, enddate, pkind, contactNumber)
VALUES ('Lucy', '2018-06-04', '2018-06-05','Keeshond', '87658876');

INSERT INTO Caretakers (cname, startdate, enddate, pkind, contactNumber)
VALUES ('Marry', '2018-06-04', '2018-06-08','Harrier', '87762432');

INSERT INTO Caretakers (cname, startdate, enddate, pkind, contactNumber)
VALUES ('Naughty', '2018-06-05', '2018-12-09','Spitz', '87763235');

INSERT INTO Caretakers (cname, startdate, enddate, pkind, contactNumber)
VALUES ('Nur', '2018-07-21', '2018-08-01','Pinscher', '92137883');

INSERT INTO Caretakers (cname, startdate, enddate, pkind, contactNumber)
VALUES ('Peter', '2018-08-04', '2019-02-04','Cocker', '92237889');

INSERT INTO Caretakers (cname, startdate, enddate, pkind, contactNumber)
VALUES ('Quota', '2018-06-09', '2018-09-05','Cannan', '89102362');

INSERT INTO Caretakers (cname, startdate, enddate, pkind, contactNumber)
VALUES ('Raffles', '2018-07-04', '2018-10-05','Malamute', '82536889');

INSERT INTO Caretakers (cname, startdate, enddate, pkind, contactNumber)
VALUES ('Richard', '2019-01-04', '2019-05-05','Akita', '89226332');

INSERT INTO Caretakers (cname, startdate, enddate, pkind, contactNumber)
VALUES ('Stephen', '2018-08-04', '2018-08-05','Bulldog', '89962234');

INSERT INTO Caretakers (cname, startdate, enddate, pkind, contactNumber)
VALUES ('Tim', '2018-07-05', '2018-12-05','Eskimo', '68823113');

-- Requests: TO BE CREATED


