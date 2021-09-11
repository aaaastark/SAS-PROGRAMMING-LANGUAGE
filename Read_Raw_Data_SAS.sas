
/* Reading ASCII(Text) Data Set */
/* These are the files which contain the data on text format. The data is usually delimited by a space, but there can be different types of delimiters also which SAS can handle.  */
/* Let’s consider an ASCII file containing the employee data. We read this file using the Infile statement available in SAS. */

DATA READ_TEXT;
INFILE '/home/u59417163/SAS_TEXT.txt.txt';
INPUT ID NAME $ SALARY DEPARTMENT $ DATE_OF_JOIN DATE9. ;
FORMAT DATE_OF_JOIN DATE9.;
RUN;
PROC PRINT DATA = READ_TEXT;
RUN;