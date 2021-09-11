
/* Histograms */

/* A Histogram is graphical display of data using bars of different heights.  */
/* It groups the various numbers in the data set into many ranges.  */
/* It also represents the estimation of the probability of distribution of a continuous variable.  */
/* In SAS the PROC UNIVARIATE is used to create histograms with the below options. */

PROC UNIVARIATE DATA = SASHELP.CARS;
   HISTOGRAM HORSEPOWER
   / MIDPOINTS = 176 to 350 by 50;
RUN;



/* Histogram with Curve Fitting */

PROC UNIVARIATE DATA = SASHELP.CARS;
HISTOGRAM HORSEPOWER
/ 
NORMAL ( 
   mu = est
   sigma = est
   color = blue
   w = 2.5 
)
BARLABEL = PERCENT
MIDPOINTS = 70 to 550 by 50;
RUN;

