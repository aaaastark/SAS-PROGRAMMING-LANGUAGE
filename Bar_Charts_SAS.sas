
/* Bar Charts */

/* A bar chart represents data in rectangular bars with length of the bar proportional to the value of the variable.  */
/* SAS uses the procedure PROC SGPLOT to create bar charts.  */
/* We can draw both simple and stacked bars in the bar chart.  */
/* In bar chart each of the bars can be given different colors. */


PROC SQL;
CREATE TABLE CARS1 AS
SELECT make, model, type, invoice, horsepower, length, weight
   FROM 
   SASHELP.CARS
   WHERE make IN ('Audi','BMW')
;
RUN;

PROC SGPLOT DATA = SASHELP.CARS;
VBAR length ;
TITLE 'Lengths of cars';
RUN;
QUIT;





/* Stacked Bar chart */

/* A stacked bar chart is a bar chart in which a variable from the dataset is calculated with respect to another variable. */

PROC SGPLOT DATA = SASHELP.CARS;
VBAR length /GROUP = type ;
TITLE 'Lengths of Cars by Types';
RUN;
QUIT;



/* Clustered Bar chart */
/* The clustered bar chart is created to show how the values of a variable are spread across a culture. */

PROC SGPLOT DATA = SASHELP.CARS;
VBAR length /GROUP = type GROUPDISPLAY = CLUSTER;
TITLE 'Cluster of Cars by Types';
RUN;
QUIT;


