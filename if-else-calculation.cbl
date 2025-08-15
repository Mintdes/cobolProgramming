      ******************************************************************
      * Author: Yamolnut Toeysiriset
      * Date: 30 June 2025
      * Purpose: ADDITION TWO NUMBER
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. IF-ELSE-CAL.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  USER-INPUT  PIC X(1).
       01  NUM1        PIC S99.
       01  NUM2        PIC S99.
       01  RES         PIC S9(3).
       01  WS-RES      PIC ---.
       01  MSG         PIC X(50).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "===== Calculation ====="
           DISPLAY "'+' ADDITION, '-' SUNTRACT, '*' MULTIPLE"
           DISPLAY "Enter your choice: "
           ACCEPT USER-INPUT

            DISPLAY "SCORE1: "
            ACCEPT NUM1.
            DISPLAY "SCORE2: "
            ACCEPT NUM2.
            DISPLAY "RESULT: "
            STRING "Total score of " DELIMITED BY SIZE
               NUM1 DELIMITED BY SPACE USER-INPUT DELIMITED BY SPACE
               NUM2 DELIMITED BY SPACE " is: " DELIMITED BY SIZE
               INTO MSG
            DISPLAY MSG.

            *> ADD NUMBER
            IF USER-INPUT = '+'
               ADD NUM2 TO NUM1 GIVING RES
               MOVE RES TO WS-RES DISPLAY WS-RES
            *> SUBTRACT NUMBER
            ELSE IF USER-INPUT = '-'
               SUBTRACT NUM2 FROM NUM1 GIVING RES
               MOVE RES TO WS-RES DISPLAY WS-RES
            *> MULTIPLE NUMBER
            ELSE IF USER-INPUT = '*'
               MULTIPLY NUM2 BY NUM1 GIVING RES
               MOVE RES TO WS-RES DISPLAY WS-RES
            ELSE DISPLAY "No choice that you choose"

            STOP RUN.
       END PROGRAM IF-ELSE-CAL.
