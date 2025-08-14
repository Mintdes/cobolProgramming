      ******************************************************************
      * Author: Yamolnut Toeysiriset
      * Date: 4 August 2025
      * Purpose: Reviews COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. lab5-2.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-INPUT-AREA.
           05 WS-INPUT-DATE PIC x(8).

       01  WS-DATE-PASSED REDEFINES WS-INPUT-AREA.
           05 WS-YEAR          PIC x(4).
           05 WS-MONTH         PIC xx.
           05 WS-DAY           PIC xx.

       01  WS-DISPLAY-DATE-1.
           05 DISP1-MONTH      PIC xx.
           05 FILLER           PIC x VALUE '/'.
           05 DISP1-DAY        PIC xx.
           05 FILLER           PIC x VALUE '/'.
           05 DISP1-YEAR       PIC x(4).

       01  WS-DISPLAY-DATE-2.
           05 DISP2-DAY        PIC xx.
           05 FILLER           PIC x VALUE "-".
           05 DISP2-MONTH      PIC x(3).
           05 FILLER           PIC x VALUE "-".
           05 DISP2-YEAR       PIC x(4).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Please enter date (YYYYMMDD): "
            ACCEPT WS-INPUT-DATE.

            MOVE WS-YEAR TO DISP1-YEAR
            MOVE WS-MONTH TO DISP1-MONTH
            MOVE WS-DAY TO DISP1-DAY
            DISPLAY "Reformatted Date (MM/DD/YYYY): "WS-DISPLAY-DATE-1

            MOVE WS-YEAR TO DISP2-YEAR
            MOVE WS-DAY TO DISP2-DAY
            EVALUATE WS-MONTH
               WHEN "01" MOVE "JAN" TO DISP2-MONTH
               WHEN "02" MOVE "FEB" TO DISP2-MONTH
               WHEN "03" MOVE "MAR" TO DISP2-MONTH
               WHEN "04" MOVE "APR" TO DISP2-MONTH
               WHEN "05" MOVE "MAY" TO DISP2-MONTH
               WHEN "06" MOVE "JUN" TO DISP2-MONTH
               WHEN "07" MOVE "JUL" TO DISP2-MONTH
               WHEN "08" MOVE "AUG" TO DISP2-MONTH
               WHEN "09" MOVE "SEP" TO DISP2-MONTH
               WHEN "10" MOVE "OCT" TO DISP2-MONTH
               WHEN "11" MOVE "NOV" TO DISP2-MONTH
               WHEN "12" MOVE "DEC" TO DISP2-MONTH
            END-EVALUATE.
            DISPLAY "Reformatted Date (DD-MON-YYYY): " WS-DISPLAY-DATE-2
            STOP RUN.
       END PROGRAM lab5-2.
