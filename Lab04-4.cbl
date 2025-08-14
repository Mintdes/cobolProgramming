      ******************************************************************
      * Author: Yamolnut Toeysiriset
      * Date: 21 July 2025
      * Purpose: Learning Cobol
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. REDEFINES-DEMO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  RAW-DATA.
           05  RAW-PAY-STRING      PIC X(6).

       01  NUMERIC-VIEW    REDEFINES   RAW-DATA.
           05  HOURLY-RATE PIC 99V9999.
           05  WEEK-SALARY REDEFINES HOURLY-RATE PIC 9999V99.

       01  DISPLAY-FIELDS.
           05  DISPLAY-HOURLY  PIC Z9.9999.
           05  DISPLAY-SALARY  PIC $Z,ZZ9.99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE "020000" TO RAW-PAY-STRING.
            DISPLAY "RAW: " RAW-PAY-STRING.
       *>     DISPLAY "HOURLY: " HOURLY-RATE.
            MOVE HOURLY-RATE TO DISPLAY-HOURLY.
            DISPLAY "Interpreted Hourly Rate is " DISPLAY-HOURLY.

            MOVE WEEK-SALARY TO DISPLAY-SALARY.
            DISPLAY "Interpreted Salary Rate is " DISPLAY-SALARY.
            STOP RUN.
       END PROGRAM REDEFINES-DEMO.
