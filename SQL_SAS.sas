
/* SQL Create Operation */

/* SAS offers extensive support to most of the popular relational databases by using SQL queries inside SAS programs.  */
/* Most of the ANSI SQL syntax is supported. The procedure PROC SQL is used to process the SQL statements.  */
/* This procedure can not only give back the result of an SQL query, it can also create SAS tables & variables.  */
/* The example of all these scenarios is described below. */


DATA TEMP;
INPUT ID $ NAME $ SALARY DEPARTMENT $;
DATALINES;
1 Rick 623.3 IT
2 Dan 515.2 Operations
3 Michelle 611 IT
4 Ryan 729 HR
5 Gary 843.25 Finance
6 Nina 578 IT
7 Simon 632.8 Operations
8 Guru 722.5 Finance
;
RUN;

PROC SQL;
CREATE TABLE EMPLOYEES AS
SELECT * FROM TEMP;
QUIT;

PROC PRINT DATA = EMPLOYEES;
RUN;




/* SQL UPDATE Operation */

/* We can update the SAS table using the SQL Update statement.  */
/* Below we first create a new table named EMPLOYEES2 and then update it using the SQL UPDATE statement. */

DATA SQL_DATA;
INPUT ID $ NAME $ SALARY DEPARTMENT $;
DATALINES;
1 Rick 623.3 IT
2 Dan 515.2 Operations
3 Michelle 611 IT
4 Ryan 729 HR
5 Gary 843.25 Finance
6 Nina 578 IT
7 Simon 632.8 Operations
8 Guru 722.5 Finance
;
RUN;

PROC SQL;
CREATE TABLE EMPLOYEES2 AS
SELECT ID AS EMPID,
Name AS EMPNAME ,
SALARY AS SALARY,
DEPARTMENT AS DEPT,
SALARY*0.23 AS COMMISION
FROM SQL_DATA;
QUIT;

PROC SQL;
UPDATE EMPLOYEES2
      SET SALARY = SALARY*1.25;
   QUIT;
      PROC PRINT DATA = EMPLOYEES2;
RUN;














