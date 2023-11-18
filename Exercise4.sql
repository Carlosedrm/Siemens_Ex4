CREATE TABLE Students(
  	ID INTEGER NOT NULL PRIMARY KEY,
  	Name VARCHAR(50) not NULL,
  	Value INTEGER NOT NULL
);
  
CREATE TABLE Notes(
	GRADE INTEGER NOT NULL PRIMARY KEY,
  	Min_Value INTEGER NOT NULL,
  	Max_value INTEGER NOT NULL
);

INSERT INTO Students (ID, Name, Value) VALUES 
(1, 'Julib', 81),
(2, 'Carol', 68),
(3, 'Maria', 99),
(4, 'Andreia', 78),
(5, 'Jaqueline', 63),
(6, 'Marcela', 88),
(7, 'Julia', 81),
(8, 'Julic', 81),
(9, 'Carlos', 40),
(10, 'Zack', 100);

INSERT INTO Notes (GRADE, Min_Value, Max_Value) VALUES
(1, 0, 9),
(2, 10, 19),
(3, 20, 29),
(4, 30, 39),
(5, 40, 49),
(6, 50, 59),
(7, 60, 69),
(8, 70, 79),
(9, 80, 89),
(10, 90, 100);

SELECT case
WHEN Notes.GRADE BETWEEN 8 AND 10 THEN NAME
ELSE "NULL" end as "Name",
Notes.GRADE as "Grade",
Value as "Value" FROM Students LEFT JOIN Notes ON Value BETWEEN Notes.min_value and Notes.max_value
ORDER BY CASE 
WHEN Value >= 70 THEN Value end DESC,
CASE when Value < 70 THEN Value END ASC,
name asc;
