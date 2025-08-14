      ******************************************************************
      * Author: Yamolnut Toeysiriset
      * Date: 21 July 2025
      * Purpose: Learning Cobol
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. INSERT_CHA_DEMO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  SRC-AMOUNT      PIC S9(5)V9(2).
       01  SRC-DATE        PIC 9(8)    VALUE 21072025.
       01  SRC-VALUE       PIC 9(4)    VALUE 1234.

       01  EDT-MONEY       PIC $Z,ZZZ,ZZ9.99.
       01  EDT-CREDIT      PIC $Z,ZZZ,ZZ9.99CR.
       01  EDT-DEBIT       PIC $Z,ZZZ,ZZ9.99DB.
       01  EDT-DATE        PIC 99/99/9999. *> or 99B99B9999
       01  EDT-VALUE       PIC 9(4)000.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "--- Demo Insertion Characters ---".

            MOVE 12345.67 TO SRC-AMOUNT. *> VALUE DATA

            DISPLAY "Raw Data: " SRC-AMOUNT.
            DISPLAY " ".

            MOVE SRC-AMOUNT TO EDT-MONEY.
            DISPLAY "MONEY: " EDT-MONEY.

            MOVE -12345.67 TO SRC-AMOUNT.
            MOVE SRC-AMOUNT TO EDT-CREDIT.
            MOVE SRC-AMOUNT TO EDT-DEBIT.
            *>   CREDIT and DEBIT is STATUS of unsigned money

            DISPLAY "Credit: " EDT-CREDIT.
            DISPLAY "Debit: "  EDT-DEBIT.

            MOVE SRC-DATE TO EDT-DATE.
            DISPLAY "Date: " EDT-DATE.

            MOVE SRC-VALUE TO EDT-VALUE.
            DISPLAY "Value: " EDT-VALUE.

            STOP RUN.
       END PROGRAM INSERT_CHA_DEMO.
