use assignment;

-- creating bajaj1
CREATE TABLE assignment.bajajtemp 
SELECT Date ,`Close Price`,row_number() OVER (ORDER BY STR_TO_DATE(Date, '%e-%M-%Y')) as RowNumber
from assignment.bajajauto ORDER BY STR_TO_DATE(Date, '%e-%M-%Y');

CREATE TABLE assignment.bajaj1 SELECT Date,
       `Close Price`,
       RowNumber,
       AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, '%e-%M-%Y') ASC ROWS 19 PRECEDING) AS 20MA,
       AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, '%e-%M-%Y') ASC ROWS 49 PRECEDING) AS 50MA
FROM bajajtemp;

UPDATE bajaj1 SET 20MA = NULL WHERE  RowNumber<20;
UPDATE bajaj1 SET 50MA = NULL WHERE  RowNumber<50;

Select * from bajaj1;

-- creating eichermotors1
CREATE TABLE assignment.eichenmotorstemp 
SELECT Date ,`Close Price`,row_number() OVER (ORDER BY STR_TO_DATE(Date, '%e-%M-%Y')) as RowNumber
from assignment.eichermotors ORDER BY STR_TO_DATE(Date, '%e-%M-%Y');

CREATE TABLE assignment.eichen1 SELECT Date,
       `Close Price`,
       RowNumber,
       AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, '%e-%M-%Y') ASC ROWS 19 PRECEDING) AS 20MA,
       AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, '%e-%M-%Y') ASC ROWS 49 PRECEDING) AS 50MA
FROM eichenmotorstemp;

UPDATE eichen1 SET 20MA = NULL WHERE  RowNumber<20;
UPDATE eichen1 SET 50MA = NULL WHERE  RowNumber<50;

Select * from eichen1;

-- creating heromotorcorp1
CREATE TABLE assignment.herotemp 
SELECT Date ,`Close Price`,row_number() OVER (ORDER BY STR_TO_DATE(Date, '%e-%M-%Y')) as RowNumber
from assignment.heromotocorp ORDER BY STR_TO_DATE(Date, '%e-%M-%Y');

CREATE TABLE assignment.hero1 SELECT Date,
       `Close Price`,
       RowNumber,
       AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, '%e-%M-%Y') ASC ROWS 19 PRECEDING) AS 20MA,
       AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, '%e-%M-%Y') ASC ROWS 49 PRECEDING) AS 50MA
FROM herotemp;

UPDATE hero1 SET 20MA = NULL WHERE  RowNumber<20;
UPDATE hero1 SET 50MA = NULL WHERE  RowNumber<50;

Select * from hero1;

-- creating infosys1
CREATE TABLE assignment.infosystemp 
SELECT Date ,`Close Price`,row_number() OVER (ORDER BY STR_TO_DATE(Date, '%e-%M-%Y')) as RowNumber
from assignment.infosys ORDER BY STR_TO_DATE(Date, '%e-%M-%Y');

CREATE TABLE assignment.infosys1 SELECT Date,
       `Close Price`,
       RowNumber,
       AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, '%e-%M-%Y') ASC ROWS 19 PRECEDING) AS 20MA,
       AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, '%e-%M-%Y') ASC ROWS 49 PRECEDING) AS 50MA
FROM infosystemp;

UPDATE infosys1 SET 20MA = NULL WHERE  RowNumber<20;
UPDATE infosys1 SET 50MA = NULL WHERE  RowNumber<50;

Select * from infosys1;

-- creating tcs1
CREATE TABLE assignment.tcstemp 
SELECT Date ,`Close Price`,row_number() OVER (ORDER BY STR_TO_DATE(Date, '%e-%M-%Y')) as RowNumber
from assignment.tcsauto ORDER BY STR_TO_DATE(Date, '%e-%M-%Y');

CREATE TABLE assignment.tcs1 SELECT Date,
       `Close Price`,
       RowNumber,
       AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, '%e-%M-%Y') ASC ROWS 19 PRECEDING) AS 20MA,
       AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, '%e-%M-%Y') ASC ROWS 49 PRECEDING) AS 50MA
FROM tcstemp;

UPDATE tcs1 SET 20MA = NULL WHERE  RowNumber<20;
UPDATE tcs1 SET 50MA = NULL WHERE  RowNumber<50;

Select * from tcs1;

-- creating tvsmotors1
CREATE TABLE assignment.tvstemp 
SELECT Date ,`Close Price`,row_number() OVER (ORDER BY STR_TO_DATE(Date, '%e-%M-%Y')) as RowNumber
from assignment.tvsmotors ORDER BY STR_TO_DATE(Date, '%e-%M-%Y');

CREATE TABLE assignment.tvs1 SELECT Date,
       `Close Price`,
       RowNumber,
       AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, '%e-%M-%Y') ASC ROWS 19 PRECEDING) AS 20MA,
       AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, '%e-%M-%Y') ASC ROWS 49 PRECEDING) AS 50MA
FROM bajajtemp;

UPDATE tvs1 SET 20MA = NULL WHERE  RowNumber<20;
UPDATE tvs1 SET 50MA = NULL WHERE  RowNumber<50;

Select * from tvs1;
