CREATE TABLE Employee(
	employeeId INT PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        gender VARCHAR(10), -- constraint: check 'male', 'female', 'others'
        dob DATE,
        email VARCHAR(100),
        contactId  int, -- constraint Foreign Key Contact_Info Table
        signature LONGBLOB,
        employeeType VARCHAR(100) -- constraint: check 'RM', 'Hos', 'A'
	
);