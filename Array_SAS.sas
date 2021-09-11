/* Accessing Array Values */
/* The values stored in an array can be accessed by using the print procedure as shown below.  */
/* After it is declared using one of the above methods, the data is supplied using DATALINES statement. */

DATA COLOUR_ARRAY;
INPUT A1 $ A2 $ A3 $ A4 $ A5 $;
ARRAY COLOUR_LENGTH(5) $ A1-A5;
ADD_COLOUR = A1 || ' + ' || A2;
DATALINES;
YELLO PINK ORANGE GREEN BLUE
;
RUN;
PROC PRINT DATA = COLOUR_ARRAY;
RUN;


/* Using the OF operator */
/* The OF operator is used when analysing the data forma an Array to perform calculations on the entire row of an array.  */
/* In the below example we apply the Sum and Mean of values in each row. */

DATA OF_ARRAY_SANTICS;
INPUT A1 A2 A3 A4;
ARRAY OF_TYPE(4) A1-A4;
OF_SUM = SUM(OF OF_TYPE(*));
OF_MEAN = MEAN(OF OF_TYPE(*));
OF_MIN = MIN(OF OF_TYPE(*));
DATALINES;
21 4 52 11
96 25 42 6
;
RUN;
PROC PRINT DATA = OF_ARRAY_SANTICS;
RUN;  
   

/* Using the IN operator */
/* The value in an array can also be accessed using the IN operator which checks for the presence of a value in the row of the array.  */
/* In the below example we check for the availability of the colour "Yellow" in the data.  */
/* This value is case sensitive. */
 
DATA IN_ARRAY_SANTICS;
INPUT A1 $ A2 $ A3 $ A4 $;
ARRAY IN_CHECK(4) A1-A4;
IF 'Allah' IN IN_CHECK THEN AVAILABLE = 'YES'; ELSE AVAILABLE = 'NO';
DATALINES;
Muhammad Allah Rakha Raza
;
RUN;
PROC PRINT DATA = IN_ARRAY_SANTICS;
RUN;



 
