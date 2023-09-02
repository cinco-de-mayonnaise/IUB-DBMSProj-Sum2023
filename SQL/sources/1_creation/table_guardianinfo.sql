CREATE TABLE Guardian_Info(
	guardianID INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	shortName VARCHAR(50),
	dob DATE NOT NULL,
	relationshipWithMinor VARCHAR(20), -- maybe constraint: could be some strings like 'mother', 'father' or free.
	passportInfoId VARCHAR(20), -- constraint: is a foreign key in passportinfo table
	residencyID VARCHAR(20), -- constraint: is a foreign key somewhere (according to ERD) WHERE???
	signature LONGBLOB NOT NULL
);