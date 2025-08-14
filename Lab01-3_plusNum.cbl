      ******************************************************************
      * Author: Yamolnut Toeysiriset
      * Date: 30 June 2025
      * Purpose: ADDITION TWO NUMBER
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 3_plusNum.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NUM1 PIC S99.
       01 NUM2 PIC S9(3).
       01 RES PIC S9(3).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           *> ADD NUMBER
            DISPLAY "SCORE1: "
            ACCEPT NUM1.
            DISPLAY "SCORE2: "
            ACCEPT NUM2.
            DISPLAY "RESULT: ".
            DISPLAY "Total score is " ADD NUM2 TO NUM1 GIVING RES.
            DISPLAY RES.

            *> SUB NUMBER
            DISPLAY "SCORE1: PIC 99"
            ACCEPT NUM1.
            DISPLAY "SCORE2: "
            ACCEPT NUM2.
            DISPLAY "RESULT: "
            DISPLAY "Total score is " SUBTRACT NUM2 FROM NUM1 GIVING RES
            DISPLAY RES.

            *> MULTIPLY NUMBER
            DISPLAY "SCORE1: PIC 99"
            ACCEPT NUM1.
            DISPLAY "SCORE2: "
            ACCEPT NUM2.
            DISPLAY "RESULT: "
            DISPLAY "Total score is " MULTIPLY NUM2 BY NUM1 GIVING RES
            DISPLAY RES.

            STOP RUN.
       END PROGRAM 3_plusNum.
