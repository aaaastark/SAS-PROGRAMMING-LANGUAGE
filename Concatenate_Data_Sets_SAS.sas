/* Concatenate Data Sets */
/* Multiple SAS data sets can be concatenated to give a single data set using the SET statement.  */
/* The total number of observations in the concatenated data set is the sum of the number of observations in the original data sets. */



DATA NAME_1; 
   INPUT ID NAME $ SALARY  ; 
DATALINES; 
1 Rick 623.3 
3 Mike 611.5 
6 Tusar 578.6 
; 
RUN; 
DATA NAME_2; 
   INPUT ID NAME $ SALARY  ; 
DATALINES; 
2 Dan 515.2 
4 Ryan 729.1 
5 Gary 843.25 
7 Pranab 632.8 
8 Rasmi 722.5 
RUN; 
DATA NAME_TYPES; 
   SET NAME_1 NAME_2; 
RUN; 
PROC PRINT DATA = NAME_TYPES; 
RUN;  



/* Different number of variables */

/* If one of the original data set has more number of variables then another,  */
/* then the data sets still get combined but in the smaller data set those variables appear as missing. */




DATA NAME_1; 
   INPUT ID NAME $ SALARY DOJ DATE9.  ; 
DATALINES; 
1 Rick 623.3 02APR2001
3 Mike 611.5 21OCT2000
6 Tusar 578.6 01MAR2009  
; 
RUN; 
DATA NAME_2; 
   INPUT ID NAME $ SALARY  ; 
DATALINES; 
2 Dan 515.2 
4 Ryan 729.1 
5 Gary 843.25 
7 Pranab 632.8 
8 Rasmi 722.5 
RUN; 
DATA NAME_TYPES;
   SET NAME_1 NAME_2; 
RUN; 
PROC PRINT DATA = NAME_TYPES; 
RUN;  







