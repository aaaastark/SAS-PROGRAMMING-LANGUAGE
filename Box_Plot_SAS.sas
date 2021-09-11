
/* Simple Boxplot */

/* A Boxplot is graphical representation of groups of numerical data through their quartiles.  */
/* Box plots may also have lines extending vertically from the boxes (whiskers) indicating variability outside the upper and lower quartiles.  */
/* The bottom and top of the box are always the first and third quartiles, and the band inside the box is always the second quartile (the median).  */
/* In SAS a simple Boxplot is created using PROC SGPLOT and paneled boxplot is created using PROC SGPANEL. */

PROC SQL;
CREATE TABLE CARS1 AS
SELECT make, model, type, invoice, horsepower, length, weight
   FROM 
   SASHELP.CARS
   WHERE make IN ('Audi','BMW')
;
RUN;

PROC SGPLOT  DATA = CARS1;
   VBOX horsepower 
   / CATEGORY = type;
   TITLE 'Horsepower of cars by types';
RUN; 


/* Boxplot in Vertical Panels */

/* We can divide the Boxplots of a variable into many vertical panels(columns).  */
/* Each panel holds the boxplots for all the categorical variables.  */
/* But the boxplots are further grouped using another third variable which divides the graph into multiple panels. */

PROC SGPANEL  DATA = CARS1;
PANELBY MAKE;
   VBOX horsepower   / CATEGORY = type;
   TITLE 'Horsepower of cars by types';
RUN; 


/* Boxplot in Horizontal Panels */

/* We can divide the Boxplots of a variable into many horizontal panels(rows).  */
/* Each panel holds the boxplots for all the categorical variables.  */
/* But the boxplots are further grouped using another third variable which divides the graph into multiple panels.  */
/* In the below example we have paneled the graph using the variable 'make'.  */

PROC SGPANEL  DATA = CARS1;
PANELBY MAKE / columns = 1 novarname;

   VBOX horsepower   / CATEGORY = type;

   TITLE 'Horsepower of cars by types';
RUN; 










As there are two distinct values of 'make' so we get two horizontal panels.
