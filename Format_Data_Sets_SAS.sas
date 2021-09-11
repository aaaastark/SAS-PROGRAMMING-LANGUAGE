
/* Format Data Sets */

/* Sometimes we prefer to show the analyzed data in a format which is different from the format in which it is already present in the data set.  */
/* For example we want to add the dollar sign and two decimal places to a variable which has price information.  */
/* Or we may want to show a text variable, all in uppercase. */
/* We can use FORMAT to apply the in-built SAS formats and PROC FORMAT is to apply user defined formats.  */
/* Also a single format can be applied to multiple variables. */


DATA EMPLOYEE; 
   INPUT ID NAME $ SALARY DEPARTMENT $; 
   FORMAT NAME $UPCASE9. ;
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
   PROC PRINT DATA = EMPLOYEE; 
RUN; 