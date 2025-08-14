      ******************************************************************
      * Author: Yamolnut Toeysiriset
      * Date: 14 July 2025
      * Purpose: Exam Cobol
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Lab-in-the-plan.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  EM-SALARY           PIC 9(7)V99.
       01  EM-BONUS-PERCENT    PIC 99V99.
       01  EM-BONUS-AMOUNT     PIC 9(7)V99.
       01  EM-TOTAL-INCOME     PIC 9(8)V99.

       01  EM-SALARY-OUT       PIC Z,ZZZ,ZZ9.99.
       01  EM-BONUS-OUT        PIC Z,ZZZ,ZZ9.99.
       01  EM-TOTAL-OUT        PIC ZZ,ZZZ,ZZ9.99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Enter Monthly Salary: "
            ACCEPT EM-SALARY.

            DISPLAY "Enter Bonus Percent (e.g. 10 for 10%)".
            ACCEPT EM-BONUS-PERCENT.

       *>     COMPUTE BONUS
       *>     COMPUTE new salary
       *>     COMPUTE EM-TOTAL-INCOME = EM-SALARY + 100.
            COMPUTE EM-BONUS-AMOUNT = EM-SALARY * EM-BONUS-PERCENT/100
            COMPUTE EM-TOTAL-INCOME = EM-SALARY + EM-BONUS-AMOUNT

            MOVE EM-SALARY TO EM-SALARY-OUT.
            MOVE EM-TOTAL-INCOME TO EM-TOTAL-OUT
            MOVE EM-BONUS-AMOUNT TO EM-BONUS-OUT

            DISPLAY " ".
            DISPLAY "--- Result ---".
            DISPLAY "Salary:       " EM-SALARY-OUT.
            DISPLAY "Bonus Amount " EM-BONUS-OUT
            DISPLAY "Total Income: " EM-TOTAL-OUT.
            STOP RUN.
       END PROGRAM Lab-in-the-plan.
