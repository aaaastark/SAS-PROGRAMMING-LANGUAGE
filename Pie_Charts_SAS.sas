

/* Pie Charts */

/* A pie-chart is a representation of values as slices of a circle with different colors.  */
/* The slices are labeled and the numbers corresponding to each slice is also represented in the chart. */


PROC SQL;
CREATE TABLE CARS1 AS
SELECT make, model, type, invoice, horsepower, length, weight
 FROM 
SASHELP.CARS
WHERE make IN ('Audi','BMW')
;
RUN;

PROC TEMPLATE;
   DEFINE STATGRAPH pie;
      BEGINGRAPH;
         LAYOUT REGION;
            PIECHART CATEGORY = type /
            DATALABELLOCATION = OUTSIDE
            CATEGORYDIRECTION = CLOCKWISE
            START = 180 NAME = 'pie';
            DISCRETELEGEND 'pie' /
            TITLE = 'Car Types';
         ENDLAYOUT;
      ENDGRAPH;
   END;
RUN;
PROC SGRENDER DATA = CARS1
            TEMPLATE = pie;
RUN;



/* Pie Chart with Data Labels */

/* In this pie chart we represent both the fractional value as well as the percentage value for each slice.  */
/* We also change the location of the label to be inside the chart.  */
/* The style of appearance of the chart is modified by using the DATASKIN option.  */
/* It uses one of the inbuilt styles, available in the SAS environment. */


PROC TEMPLATE;
   DEFINE STATGRAPH pie;
      BEGINGRAPH;
         LAYOUT REGION;
            PIECHART CATEGORY = type /
            DATALABELLOCATION = INSIDE
            DATALABELCONTENT = ALL
            CATEGORYDIRECTION = CLOCKWISE
            DATASKIN = SHEEN 
            START = 180 NAME = 'pie';
            DISCRETELEGEND 'pie' /
            TITLE = 'Car Types';
         ENDLAYOUT;
      ENDGRAPH;
   END;
RUN;
PROC SGRENDER DATA = CARS1
            TEMPLATE = pie;
RUN;



/* Grouped Pie Chart */

/* In this pie chart the value of the variable presented in the graph is grouped with respect to another variable of the same data set.  */
/* Each group becomes one circle and the chart has as many concentric circles as the number of groups available. */

PROC TEMPLATE;
   DEFINE STATGRAPH pie;
      BEGINGRAPH;
         LAYOUT REGION;
            PIECHART CATEGORY = type / Group = make
            DATALABELLOCATION = INSIDE
            DATALABELCONTENT = ALL
            CATEGORYDIRECTION = CLOCKWISE
            DATASKIN = SHEEN 
            START = 180 NAME = 'pie';
            DISCRETELEGEND 'pie' /
            TITLE = 'Car Types';
         ENDLAYOUT;
      ENDGRAPH;
   END;
RUN;
PROC SGRENDER DATA = CARS1
            TEMPLATE = pie;
RUN;










