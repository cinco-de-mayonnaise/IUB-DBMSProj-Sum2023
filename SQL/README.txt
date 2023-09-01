Standard: All names should be VARCHAR(100)
All addresses should be VARCHAR(400)  
All email addresses should be VARCHAR(100)
All DOB should be DATE
All nationality should be VARCHAR(20)
All phone/telephone numbers should be VARCHAR(20)
All photos/signatures should be VARBINARY(2097152) (under 2 megabytes)


Pattern for writing SQL code

CREATE TABLE Name_First_Letters_Capital(
	-- first all primary keys
	-- then all data fields

	-- then all constraints

);



if a field has constraints, ALWAYS comment the line it was declared in, like

	gender VARCHAR(10) -- constraint: check 'male', 'female', 'others'

especially if you dont declare the constraint on that field and put it later
