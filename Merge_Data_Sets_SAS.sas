/* Merge Data Sets */

/* Multiple SAS data sets can be merged based on a specific common variable to give a single data set.  */
/* This is done using the MERGE statement and BY statement.  */
/* The total number of observations in the merged data set is often less than the sum of the number of observations in the original data sets.  */

/* Consider two SAS data sets one containing the employee ID with name and salary and another containing employee ID with employee ID and department.  */
/* In this case to get the complete information for each employee we can merge these two data sets.  */
/* The final data set will still have one observation per employee but it will contain both the salary and department variables. */


DATA USER_SALARY; 
   INPUT ID NAME $ SALARY ; 
DATALINES; 
1 Rick 623.3		 
2 Dan 515.2 		
3 Mike 611.5 		
4 Ryan 729.1 
5 Gary 843.25 
6 Tusar 578.6 
7 Pranab 632.8 
8 Rasmi 722.5 
;
RUN; 
DATA DEPARTMENTS; 
   INPUT ID DEPT $; 
DATALINES; 
1 IT 
2 OPS
3 IT 
4 HR 
5 FIN 
6 IT 
7 OPS
8 FIN 
;
RUN; 
DATA MERGE_ALL;
MERGE USER_SALARY DEPARTMENTS;
BY (ID);
RUN;
PROC PRINT DATA = MERGE_ALL; 
RUN;  