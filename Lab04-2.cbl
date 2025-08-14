      ******************************************************************
      * Author: Yamolnut Toeysiriset
      * Date: 21 July 2025
      * Purpose: Learning Cobol
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADVANCE-EDITING.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  SRC-NUMBERS.
           05  WS-AMOUNT               PIC S9(4)V99.

       01  EDITED-FIELDS.
           05  WS-EDIT-Z               PIC Z,ZZ9.99.
           05  WS-EDIT-ASTERISK        PIC **,**9.99.
           05  WS-EDIT-DOLLAR          PIC $$,$$$$.99.
           05  WS-EDIT-PLUS            PIC ++,++++.99.
           05  WS-EDIT-MINUS           PIC --,----.99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "--- Test with +0123.45 ---".
            MOVE +0123.45 TO WS-AMOUNT.
            MOVE WS-AMOUNT TO WS-EDIT-Z.
            DISPLAY "Zero Suppression (Z): " WS-EDIT-Z.

            MOVE WS-AMOUNT TO WS-EDIT-ASTERISK.
            DISPLAY "Check Protection (*): " WS-EDIT-ASTERISK.

            MOVE WS-AMOUNT TO WS-EDIT-DOLLAR.
            DISPLAY "Dollars ($): " WS-EDIT-DOLLAR.

            MOVE WS-AMOUNT TO WS-EDIT-PLUS.
            DISPLAY "Plus: " WS-EDIT-PLUS.

            MOVE WS-AMOUNT TO WS-EDIT-MINUS.
            DISPLAY "Minus: " WS-EDIT-MINUS.

            MOVE -0123.45 to WS-AMOUNT.
            MOVE WS-AMOUNT TO WS-EDIT-PLUS.
            DISPLAY "(+): " WS-EDIT-PLUS.

            MOVE WS-AMOUNT TO WS-EDIT-MINUS.
            DISPLAY "(-): " WS-EDIT-MINUS.

            STOP RUN.
       END PROGRAM ADVANCE-EDITING.
