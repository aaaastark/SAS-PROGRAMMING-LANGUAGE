
/* Simple Scatterplot */

/* A scatterplot is a type of graph which uses values from two variables plotted in a Cartesian plane. 
It is usually used to find out the relationship between two variables.  */
/* In SAS we use PROC SGSCATTER to create scatterplots. */


PROC SQL;
CREATE TABLE CARS1 AS
SELECT make, model, type, invoice, horsepower, length, weight
FROM 
SASHELP.CARS
WHERE make IN ('Audi','BMW')
;
RUN;

TITLE 'Scatterplot - Two Variables';
PROC sgscatter  DATA = CARS1;
   PLOT horsepower*Invoice 
   / DATALABEL = make GROUP = type GRID;
   TITLE 'Horsepower vs. Invoice for car makers by types';
RUN; 




/* Scatter Matrix */

/* We can also have a scatterplot involving more than two variables by grouping them into pairs.  */
/* In the example below we consider three variables and draw a scatter plot matrix.  */
/* We get 3 pairs of resulting matrix. */


PROC SGSCATTER DATA = CARS1;
   MATRIX horsepower invoice length
   / GROUP = type;
   TITLE 'Horsepower vs. Invoice vs. Length for car makers by types';
RUN; 
