# Exercise 4

Here i will explain the main part of the code and query:
```
SELECT CASE
WHEN Notes.GRADE BETWEEN 8 AND 10 THEN NAME
ELSE "NULL" end as "Name",
Notes.GRADE as "Grade",
Value as "Value" FROM Students LEFT JOIN Notes ON value BETWEEN Notes.min_value and Notes.max_value
ORDER BY CASE 
WHEN Value >= 70 THEN Value end DESC,
CASE when Value < 70 THEN Value END ASC,
name asc;

```
It starts with a CASE WHEN operation which verifies to see if the student has a grade of at least 8 to show their name, if they have a lower grade their name will be "NULL", then we go to show their grade based in the value they have, we do this by use of a LEFT JOIN operation which aim's to get the right grade between the minimal and maximum value listed on the table Notes by the Value the students have, then we ORDER BY two cases, if the grade of the student is 8 or more we order by a descending order, else we order by a ascending order, we also get order by the name in the alphabetical order in case there's two students with the same grade.

For this question i had to look at some of my past exercises, before that my query used to look like this:
```
CREATE TABLE students(
  	ID INTEGER NOT NULL PRIMARY KEY,
  	Name VARCHAR(50) not NULL,
  	Value INTEGER NOT NULL
);
  
CREATE TABLE notes(
	GRADE INTEGER NOT NULL PRIMARY KEY,
  	Min_Value INTEGER NOT NULL,
  	Max_value INTEGER NOT NULL
);

INSERT INTO students (ID, Name, Value) VALUES 
(1, 'Julia', 81),
(2, 'Carol', 68),
(3, 'Maria', 99),
(4, 'Andreia', 78),
(5, 'Jaqueline', 63),
(6, 'Marcela', 88),
(7, 'Julib', 81);

INSERT INTO notes (GRADE, Min_Value, Max_Value) VALUES
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

SELECT CASE
WHEN Value BETWEEN 70 AND 100 THEN Name
ELSE "NULL" end as "Name", CASE 
WHEN VALUE BETWEEN 90 AND 100 THEN 10 
WHEN VALUE BETWEEN 80 AND 89  THEN 9
when VALUE BETWEEN 70 AND 79 THEN 8
WHEN VALUE BETWEEN 60 AND 69 THEN 7
WHEN VALUE BETWEEN 50 AND 59 THEN 6
WHEN VALUE BETWEEN 40 AND 49 THEN 5
WHEN VALUE BETWEEN 30 AND 39 THEN 4
WHEN VALUE BETWEEN 20 AND 29 THEN 3
WHEN VALUE BETWEEN 10 AND 19 THEN 2
ELSE 1 END as "Grade", VALUE as "Value" FROM students
ORDER BY CASE 
WHEN Value >= 70 THEN Value end DESC,
CASE when Value < 70 THEN Value END ASC,
name asc;
```
Which is a more brute force solution to the problem.

Please go to: https://sqliteonline.com and run the full code there. If it does not work run each part of the code separately and one at a time.
