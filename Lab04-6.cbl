      ******************************************************************
      * Author: Yamolnut Toeysiriset
      * Date: 21 July 2025
      * Purpose: Learning Cobol
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MULTIPLY-NUMBER.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-COUNTER          PIC 99.
       01  WS-ROW-INDEX        PIC 99.
       01  WS-ROW-INDEX-SHOW   PIC Z9.
       01  RESULT              PIC Z,ZZ9.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "--- Multiply Number Program ---"
            DISPLAY "Enter Number (0-99): "
            ACCEPT WS-COUNTER.
            PERFORM VARYING WS-ROW-INDEX FROM 1 BY 1
               UNTIL WS-ROW-INDEX > 12
               MULTIPLY WS-COUNTER BY WS-ROW-INDEX GIVING RESULT
               MOVE WS-ROW-INDEX TO WS-ROW-INDEX-SHOW
               DISPLAY WS-COUNTER " x " WS-ROW-INDEX-SHOW " = " RESULT
            END-PERFORM.
            DISPLAY "--------------------------------"
            STOP RUN.
       END PROGRAM MULTIPLY-NUMBER.
