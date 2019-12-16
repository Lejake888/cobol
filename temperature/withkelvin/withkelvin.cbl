        IDENTIFICATION DIVISION. 
        PROGRAM-ID. CONVERTER AS "CONVERTER".
        DATA DIVISION.
        WORKING-STORAGE SECTION. 
            01 WS-CONVERTER PIC 9.
            01 TEMPERATURES.
                05 WS-INPUT-TEMP        PIC S9(3)V9(3).
                05 WS-CONVERTED-TEMP    PIC S9(3)V9(3).
        PROCEDURE DIVISION.
           DISPLAY "[CONVERT TEMPERATURE]:1/2/3/4/5/6".
           ACCEPT WS-CONVERTER.
           DISPLAY "[ENTER A TEMPERATURE]: ".
           ACCEPT WS-INPUT-TEMP.

           IF WS-CONVERTER = 1 THEN
               COMPUTE WS-CONVERTED-TEMP = WS-INPUT-TEMP * (9/5) + 32
               DISPLAY "Celcius: " WS-INPUT-TEMP
               DISPLAY "Farenheit: " WS-CONVERTED-TEMP
           END-IF.

           IF WS-CONVERTER = 2 THEN
               COMPUTE WS-CONVERTED-TEMP = (WS-INPUT-TEMP - 32) * (5/9)
               DISPLAY "Farenheit: " WS-INPUT-TEMP
               DISPLAY "Celcius: " WS-CONVERTED-TEMP
           END-IF.

           IF WS-CONVERTER = 3 THEN
               COMPUTE WS-CONVERTED-TEMP = WS-INPUT-TEMP + 273.15
               DISPLAY "Celcius: " WS-INPUT-TEMP
               DISPLAY "Kelvin: " WS-CONVERTED-TEMP
           END-IF.

           IF WS-CONVERTER = 4 THEN
               COMPUTE WS-CONVERTED-TEMP = WS-INPUT-TEMP - 273.15
               DISPLAY "Kelvin: " WS-INPUT-TEMP
               DISPLAY "Celcius: " WS-CONVERTED-TEMP
           END-IF.

           IF WS-CONVERTER = 5 THEN
               COMPUTE WS-CONVERTED-TEMP = ((WS-INPUT-TEMP - 32) 
               * (5 / 9)) + 273.15
               DISPLAY "Farenheit: " WS-INPUT-TEMP
               DISPLAY "Kelvin: " WS-CONVERTED-TEMP
           END-IF.

           IF WS-CONVERTER = 6 THEN
               COMPUTE WS-CONVERTED-TEMP = WS-INPUT-TEMP - 273.15 
               * 9 / 5 + 32
               DISPLAY "Kelvin: " WS-INPUT-TEMP
               DISPLAY "Farenheit: " WS-CONVERTED-TEMP
           END-IF.
           
           STOP RUN.   
       END PROGRAM CONVERTER.
       