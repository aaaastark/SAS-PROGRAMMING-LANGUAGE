/* Sort Data Sets */

/* Data sets in SAS can be sorted on any of the variables present in them. This helps both in data analysis and performing other options like merging etc.  */
/* Sorting can happen on any single variable as well as multiple variables. The SAS procedure used to carry out the sorting in SAS data set is named PROC SORT.  */
/* The result after sorting is stored in a new data set and the original data set remains unchanged. */


DATA EMPLOYEE_DETAILS; 
   INPUT ID NAME $ SALARY DEPARTMENT $;
DATALINES; 
1 Rick 623.3	IT 		 
2 Dan 515.2 	OPS	
3 Mike 611.5 	IT 	
4 Ryan 729.1    HR 
5 Gary 843.25   FIN 
6 Tusar 578.6   IT 
7 Pranab 632.8  OPS
8 Rasmi 722.5   FIN 
;
RUN;

PROC SORT DATA = EMPLOYEE_DETAILS OUT = SORT_LISTED_DATA_ONLY ;
   BY SALARY;
RUN ;
 
PROC PRINT DATA = SORT_LISTED_DATA_ONLY ;
RUN ; 