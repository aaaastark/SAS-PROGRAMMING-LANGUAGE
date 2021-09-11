/* Subsetting Data Sets */

/* Subsetting a SAS data set means extracting a part of the data set by selecting a fewer number of variables or fewer number of observations or both.  */
/* While subsetting of variables is done by using KEEP and DROP statement, the sub setting of observations is done using DELETE statement. */


DATA Employee; 
   INPUT ID NAME $ SALARY DEPARTMENT $ ; 
DATALINES; 
1 Rick 623.3 	IT 		 
2 Dan 515.2 	OPS	
3 Mike 611.5 	IT 	
4 Ryan 729.1    HR 
5 Gary 843.25   FIN 
6 Tusar 578.6   IT 
7 Pranab 632.8  OPS
8 Rasmi 722.5   FIN 
;
RUN;
DATA NAME_DEPARTMENT;
   SET Employee;
   KEEP NAME DEPARTMENT;
   RUN;
   PROC PRINT DATA = NAME_DEPARTMENT; 
RUN; 