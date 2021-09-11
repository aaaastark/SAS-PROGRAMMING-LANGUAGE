/* Function Categories */
/* Depending on their usage, the functions in SAS are categorised as below. */
/* Mathematical */
/* Date and Time */
/* Character */
/* Truncation */
/* Miscellaneous */




/* Mathematical Functions */
/* These are the functions used to apply some mathematical calculations on the variable values. */

DATA MATH_FUNCTIONS;
V1 = 20; V2 = 30; V3 = 40; V4 = 50; V5 = 60;

/* Get Maximum value */
MAX_VALUE = MAX(V1,V2,V3,V4,V5);

/* Get Minimum value */
MIN_VALUE = MIN(V1,V2,V3,V4,V5);

/* Get Median value */
MEDIAN_VALUE = MEDIAN(V1,V2,V3,V4,V5);

/* Get a random number */
RAND_VALUE = RANUNI(0);

/* Get Square root of sum of the values */
SQUARE_VALUE = SQRT(SUM(V1,V2,V3,V4,V5));
RUN;
PROC PRINT DATA = MATH_FUNCTIONS;
RUN;





/* Date and Time Functions */
/* These are the functions used to process date and time values. */

DATA DATE_FUNCTIONS;
INPUT @1 DATE_1 DATE9. @11 DATE_2 DATE9.;
FORMAT DATE_1 DATE9. DATE_2 DATE9.;

/* Get the interval between the dates in years*/
YEARS =INTCK('YEAR',DATE_1,DATE_2);

/* Get the interval between the dates in months*/
MONTHS = INTCK('MONTH',DATE_1,DATE_2);

/* Get the week day from the date*/
WEEKDAYS=  WEEKDAY(DATE_1);

/* Get Today's date in SAS date format */
TODAYS = TODAY();

/* Get current time in SAS time format */
TIMES = TIME();

DATALINES;
21OCT2000 16AUG1998
01MAR2009 11JUL2012
;
RUN;
PROC PRINT DATA = DATE_FUNCTIONS;
RUN;





/* Character Functions */
/* These are the functions used to process character or text values. */

DATA CHARACTER_FUNCTION;
/* Convert the string into lower case */
LOW_CASE = LOWCASE('HASSAN');
/* Convert the string into upper case */
UPER_CASE = UPCASE('rakha');
/* Reverse the string */
REVERSE_CASE = REVERSE('Allah');
/* Return the nth word (location check of specific combine word)*/
NTH_LETTER = SCAN('Allah Rakha Raza',2);
RUN;
PROC PRINT DATA = CHARACTER_FUNCTION;
RUN;




/* Truncation Functions */
/* These are the functions used to truncate numeric values. */


DATA TRUNCATION_FUNCTION;

/* Nearest greatest integer */
CEIL_INTEGER = CEIL(22.44);

/* Nearest greatest float */
FLOOR_FLOAT = FLOOR(44.222);

/* Integer portion of a number */
INT_INTEGER = INT(656546.7777);

/* Round off to nearest value */
ROUND_NUMBER = ROUND(44563.66);
RUN;
PROC PRINT DATA = TRUNCATION_FUNCTION;
RUN;




/* Miscellaneous Functions */
/* Let us now understand the miscellaneous functions of SAS with some examples. */


DATA MISCLLANEOUS_FUNCTION;
STATE2 = ZIPSTATE('01040');
/* Amortization calculation */
PAYMENT = MORT(22244,., .2/44, 66*33);
PROC PRINT DATA = MISCLLANEOUS_FUNCTION;
RUN;





