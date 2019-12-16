       IDENTIFICATION DIVISION. 
       PROGRAM-ID. PRACTICE AS "PRACTICE" .
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 WS-FORMAT.
               05 WS-NAME.             
                   10 FILLER           PIC X(4) VALUE SPACES.
                   10 FIRST-NAME       PIC X(32). 
                   10 FILLER           PIC X VALUE SPACES.
                   10 LAST-NAME        PIC X(32). 
                   10 FILLER           PIC X VALUE SPACES.
               05 WS-AGE               PIC 9(2).
               05 WS-BIRTHDAY.
                   10 WS-YEAR          PIC 9(4).
                   10 FILLER           PIC X VALUE SPACES.
                   10 WS-MONTH         PIC 9(2).
                   10 FILLER           PIC X VALUE SPACES.                   
                   10 WS-DAY           PIC 9(2).          

       PROCEDURE DIVISION.
           DISPLAY "ENTER YOUR FIRST NAME: "
           ACCEPT FIRST-NAME.
           DISPLAY "ENTER YOUR LAST NAME: "
           ACCEPT LAST-NAME.
           DISPLAY WS-NAME.
           STOP RUN.
       END PROGRAM PRACTICE.
       