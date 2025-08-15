      ******************************************************************
      * Author: Yamolnut Toeysiriset
      * Date: 21 July 2025
      * Purpose: Learning Cobol
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-COUNTER      PIC 99.
       01  WS-ROW-INDEX    PIC 9.
       01  WS-COL-INDEX    PIC 9.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM VARYING WS-COUNTER FROM 1 BY 1 *> For Loop
               UNTIL WS-COUNTER > 5
               DISPLAY "Varying Loop, Number " WS-COUNTER
            END-PERFORM.
            DISPLAY "-----------------------"
            PERFORM UNTIL WS-COUNTER > 10
               DISPLAY "Until Loop, Number " WS-COUNTER
               ADD 1 TO WS-COUNTER
            END-PERFORM.
            DISPLAY "-----------------------"
            PERFORM WITH TEST AFTER UNTIL WS-COUNTER > 10
               DISPLAY "Test After Loop, Number " WS-COUNTER
               ADD 1 TO WS-COUNTER
            END-PERFORM.
            DISPLAY "-----------------------"
            PERFORM 5 TIMES *> Recursive 5 times0
               DISPLAY "Hello, Cobol"
            END-PERFORM.
            DISPLAY "-----------------------"
            PERFORM VARYING WS-ROW-INDEX FROM 1 BY 1
               UNTIL WS-ROW-INDEX > 3
               DISPLAY "Current Row: " WS-ROW-INDEX
               PERFORM VARYING WS-COL-INDEX FROM 1 BY 1 *> Nested Loop
                   UNTIL WS-COL-INDEX > 4
                   DISPLAY "Column: " WS-COL-INDEX " -> Coordinate: ("
                   WS-ROW-INDEX "," WS-COL-INDEX ")"
               END-PERFORM
            END-PERFORM.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
