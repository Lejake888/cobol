       IDENTIFICATION DIVISION. 
       PROGRAM-ID. DICE AS "DICE".
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
       01 DICE.
           05 WS-ROLL PIC 9V9(20).
           05 WS-TOTAL PIC 99 VALUE ZEROES.
       PROCEDURE DIVISION.
           PERFORM VARYING WS-TOTAL FROM 1 BY 1 UNTIL WS-TOTAL > 20
           COMPUTE WS-ROLL = FUNCTION RANDOM
           DISPLAY WS-ROLL
           END-PERFORM.
       END PROGRAM DICE.