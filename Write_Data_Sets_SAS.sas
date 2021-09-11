/* PROC EXPORT */

/* It is a SAS inbuilt procedure used to export the SAS data sets for writing the data into files of different formats.    */
/* SAS data-set is the data set name which is being exported. SAS can share the data sets from its environment with other applications by creating files which can be read by different operating systems. It uses the inbuilt EXPORT function to out the data set files in a variety of formats. In this chapter we will see the writing of SAS data sets using proc export along with the options dlm and dbms. */
/*  */
/* SAS data-set-options is used to specify a subset of columns to be exported. */
/*  */
/* filename is the name of the file to which the data is written into. */
/*  */
/* identifier is used to mention the delimiter that will be written into the file. */
/*  */
/* LABEL option is used to mention the name of the variables written to the file. */

PROC EXPORT DATA = SASHELP.CARS
OUTFILE = '/home/u59417163/SAS_TEXT_1.txt';
DBMS = DLM;
DELIMITER = ' ';
RUN; 



/* Writing a CSV file */

/* In order to write a comma delimited file we can use the dlm option with a value "csv".  */
/* The following code writes the file car_data.csv. */

   
PROC EXPORT DATA = SASHELP.CARS
OUTFILE = '/home/u59417163/car_data.csv';
DBMS = CSV;
RUN;




/* Writing a tab delimited file */

/* In order to write a tab delimited file we can use the dlm option with a value "tab".  */
/* The following code writes the file car_tab.txt. */

PROC EXPORT DATA = SASHELP.CARS
OUTFILE = '/home/u59417163/car_data.txt';
DBMS = CSV;
RUN;




