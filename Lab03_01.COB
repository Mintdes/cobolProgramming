      ******************************************************************
      * Author: Yamolnut Toeysiriset
      * Date: 14 July 2025
      * Purpose: Cobol Exam
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Lab03_01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  EMPLOYEE-RECORD.
           05 EMP-ID       PIC 9(5)    VALUE 12345.
           05 EMP-NAME.
               10 EMP-TITLE    PIC X(10)   VALUE "Mr.".
               10 EMP-FNAME    PIC A(25)   VALUE "John".
               10 EMP-LNAME    PIC A(25)   VALUE "Kim".
           05 EMP-DAPARTMENT   PIC X(20)       VALUE "IT DEPARTMENT".
           05 EMP-SALARY       PIC 9(5)V9(2)   VALUE 12345.67.
       01  EMP-FULLNAME    PIC X(60).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           STRING EMP-TITLE DELIMITED BY SPACE
               EMP-FNAME   DELIMITED BY SPACE
               " "         DELIMITED BY SIZE
               EMP-LNAME   DELIMITED BY SPACE
               INTO EMP-FULLNAME
            DISPLAY "=================================================="
            DISPLAY "               EMPLOYEE INFORMATION               "
            DISPLAY "=================================================="
            DISPLAY "EMPLOYEE ID    : " EMP-ID
            DISPLAY "NAME           : " EMP-FULLNAME
            DISPLAY "DEPARTMENT     : " EMP-DAPARTMENT
            DISPLAY "MONTHLY SALARY : $" EMP-SALARY
            DISPLAY "=================================================="
            STOP RUN.
       END PROGRAM Lab03_01.
