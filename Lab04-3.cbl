      ******************************************************************
      * Author: Yamolnut Toeysiriset
      * Date: 21 July 2025
      * Purpose: Learning Cobol
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. RECEIPT-BUILD.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  SOURCE-DATA.
           05  WS-TRAN-DATE    PIC 9(8)        VALUE 25072025.
           05  WS-INV-NUM      PIC 9(4)        VALUE 35.
           05  WS-PRICE        PIC 9(5)V99     VALUE 18500.75.
           05  WS-BALANCE      PIC S9(5)V99    VALUE -2500.50.

       01  EDIT-FIELDS.
           05  WS-EDIT-TRAN-DATE       PIC 99B99B9999.
           05  WS-EDIT-INV-NUM         PIC 009(2).
           05  WS-EDIT-PRICE           PIC $$$,$$$.99.
           05  WS-EDIT-PLUS-BALANCE    PIC ++,+++.99.
           05  WS-EDIT-MINUS-BALANCE   PIC --,---.99.
           05  WS-EDIT-BALANCE-CREDIT  PIC $Z,ZZ9.99CR.
           05  WS-EDIT-BALANCE-DEBIT   PIC $Z,ZZ9.99DB.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "--- Mini Receipt ---"
            MOVE WS-TRAN-DATE TO WS-EDIT-TRAN-DATE.
            DISPLAY "Transaction Date: " WS-EDIT-TRAN-DATE.

            MOVE WS-INV-NUM TO WS-EDIT-INV-NUM.
            DISPLAY "Invoice No.: " WS-EDIT-INV-NUM.

            MOVE WS-PRICE TO WS-EDIT-PRICE.
            DISPLAY "Price: " WS-EDIT-PRICE.

            DISPLAY "--- Account Balance ---"

            MOVE WS-BALANCE TO WS-EDIT-PLUS-BALANCE.
            DISPLAY "Balance (Sign +): " WS-EDIT-PLUS-BALANCE.

            MOVE WS-BALANCE TO WS-EDIT-MINUS-BALANCE.
            DISPLAY "Balance (Sign -): " WS-EDIT-MINUS-BALANCE.

            MOVE WS-BALANCE TO WS-EDIT-BALANCE-CREDIT.
            DISPLAY "Balance (CR): " WS-EDIT-BALANCE-CREDIT.

            MOVE WS-BALANCE TO WS-EDIT-BALANCE-DEBIT.
            DISPLAY "Balance (DB): " WS-EDIT-BALANCE-DEBIT.

            STOP RUN.
       END PROGRAM RECEIPT-BUILD.
