
/* We can declare the string variables and their values as shown below.  */
/* The LENGTH keyword is used for declaring variables without creating multiple observations. */

DATA NAME_JOIN;
	LENGTH NAME1 $ 9 NAME2 $ 6 NAME3 $ 5;
	NAME1 = 'Muhammad';
	NAME2 = 'Allah';
	NAME3 = 'Rakha';
	MY_NAME = NAME1 || NAME2 || NAME3;
RUN;
PROC PRINT DATA = NAME_JOIN;
RUN;


/* SUBSTRN */
/* This function extracts a substring using the start and end positions.  */
/* In case of no end position is mentioned it extracts all the characters till end of the string. */


DATA SUBSTRING;
	LENGTH NAME1 $ 5;
	NAME1 = 'Rakha';
	SUBSTRING_NAME = SUBSTRN(NAME1,2,5);
RUN;
PROC PRINT DATA = SUBSTRING;
RUN; 


/* TRIMN */
/* This function removes the trailing space form a string. */


DATA SAPCE_CHECKING;
	LENGTH NAME1 $ 9;
	NAME1 = 'Muhammad    ';
	LENGTH_COUNT = LENGTHC(NAME1);
	LENGTH_TRIMMED_COUNT = LENGTHC(TRIMN(NAME1));
RUN;
PROC PRINT DATA = SAPCE_CHECKING;
RUN;





















