      ******************************************************************
      * Author: Yamolnut Toeysiriset
      * Date: 30 June 2025
      * Purpose: CALCULATE GRADE
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 4_ifconditon.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  USERNAME            PIC X(10).
       01  SCORE1              PIC 99.
       01  SCORE2              PIC 99.
       01  RES                 PIC 9(3).
       01  RES-WITHOUT-ZERO    PIC ZZ9.
       01  MSG                 PIC X(30).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "ENTER YOUR NAME: "
            ACCEPT USERNAME.
            *> Compound to string 'MSG'
            STRING USERNAME DELIMITED BY SPACE
               " HAS TOTAL SCORES IS " DELIMITED BY SIZE INTO MSG
            END-STRING.

            IF USERNAME NOT = SPACES
                DISPLAY "Hello, " USERNAME
            ELSE
                DISPLAY "You didn't enter your name, BRO."
               END-IF.

            DISPLAY "ENTER SCORE1: "
            ACCEPT SCORE1.
            DISPLAY "ENTER SCORE2: "
            ACCEPT SCORE2.

            IF SCORE1 <= 50 AND SCORE2 <= 50
                DISPLAY MSG
                ADD SCORE1 to SCORE2 GIVING RES
                MOVE RES TO RES-WITHOUT-ZERO DISPLAY RES-WITHOUT-ZERO
            ELSE
               DISPLAY "Number cannot be greater than 50."
               STOP RUN.

            IF RES >= 80
                DISPLAY "YOU GOT GRADE A."
            ELSE IF RES >= 70 AND RES < 80
                DISPLAY "YOU GOT GRADE B."
            ELSE IF RES >= 60 AND RES < 70
                DISPLAY "YOU GOT GRADE C."
            ELSE IF RES >= 50 AND RES < 60
                DISPLAY "YOU GOT GRADE D."
            ELSE
                DISPLAY "YOU GOT GRADE F."
                END-IF.
            STOP RUN.
       END PROGRAM 4_ifconditon.
