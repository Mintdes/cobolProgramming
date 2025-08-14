      ******************************************************************
      * Author: Yamolnut Toeysiriset
      * Date: 4 August 2025
      * Purpose: Reviews Loop Cobol
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Lab5-1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION. *> Declaraion variables
       01  WS-INDEX-PRODUCT.
           05  FILLER   Pic X(10)   VALUE "COKE".
           05  FILLER   Pic X(10)   VALUE "PEPSI".
           05  FILLER   Pic X(10)   VALUE "FANTA".
           05  FILLER   Pic X(10)   VALUE "ITIMNOM".
           05  FILLER   Pic X(10)   VALUE "ECLAIRE".
       01  WS-PRODUCT-TABLE REDEFINES WS-INDEX-PRODUCT.
           05  WS-PRODUCT-NAME     Pic X(10)   OCCURS 5 TIMES.

       01  WS-VENDING-CONTROLS.
           05  WS-ITEM-PRICE       Pic 99 VALUE 15.
           05  WS-MONEY-INSERTED   Pic 99.
           05  WS-TOTAL-MONEY      Pic 99  VALUE ZERO.
           05  WS-CONTINUE-FLAG    Pic X VALUE 'Y'.
           05  WS-INDEX            Pic 9.
           05  WS-COUNT-INPUT      Pic X.

       PROCEDURE DIVISION.
       1000-MAIN-PROCEDURE.

            PERFORM WITH TEST AFTER UNTIL WS-CONTINUE-FLAG = 'N' OR 'n'
               PERFORM 2000-DISPLAY-MENU
               PERFORM 3000-PROCESS-PAYMENT
               PERFORM 4000-DISPENSE-ITEM
               PERFORM 5000-ASK-CONTINUE
            END-PERFORM.
            DISPLAY "Shutting Down".
            STOP RUN.

       2000-DISPLAY-MENU.
            DISPLAY "---- Welcome to COBOL Vending Machine ----".
            DISPLAY "Please select an item (Price: " WS-ITEM-PRICE
            " BAHT):"

            PERFORM VARYING WS-INDEX FROM 1 BY 1 UNTIL WS-INDEX > 5
               DISPLAY WS-INDEX ". " WS-PRODUCT-NAME(WS-INDEX)
            END-PERFORM.
            DISPLAY " ".
            DISPLAY "Please enter your select item, the pre ENTER..."
            ACCEPT WS-COUNT-INPUT.

       3000-PROCESS-PAYMENT.
            MOVE ZERO TO WS-TOTAL-MONEY.
            PERFORM UNTIL WS-TOTAL-MONEY >= WS-ITEM-PRICE
               DISPLAY "Please insert money: "
               ACCEPT WS-MONEY-INSERTED
               ADD WS-MONEY-INSERTED TO WS-TOTAL-MONEY
               DISPLAY "Current total: " WS-TOTAL-MONEY
            END-PERFORM.
            DISPLAY "Payment successful."
            DISPLAY " ".

       4000-DISPENSE-ITEM.
            DISPLAY "Dispensing Item..."
            DISPLAY "******************"
            DISPLAY "*** THANK YOU ***"
            DISPLAY "******************"

            DISPLAY " ".

       5000-ASK-CONTINUE.
            DISPLAY "Buy another item? (Y/N)".
            ACCEPT WS-CONTINUE-FLAG
            DISPLAY " ".
            STOP RUN.
       END PROGRAM Lab5-1.
