      ******************************************************************
      * Author: Yamolnut Toeysiriset
      * Date: 30 June 2025
      * Purpose: ACCEPT VALUE FROM USER
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 2_accept.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       *> Declare variable
       01 MYNAME PIC X(10).
       01 MSG PIC X(60).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello, what is your name?".
            ACCEPT MYNAME. *> get input from user
            *> DISPLAY "Nice to meet you " MYNAME
            *> "WELCOME TO COBOL PROGRAMMING.".

            *> No space from declare variable X(10)
            STRING "Nice to meet you, " DELIMITED BY SIZE
               MYNAME DELIMITED BY SPACE
               ", Welcome to COBOL Programming!" DELIMITED BY SIZE
               INTO MSG
            END-STRING.

            DISPLAY MSG.
            STOP RUN.
       END PROGRAM 2_accept.
