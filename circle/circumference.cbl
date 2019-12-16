       IDENTIFICATION DIVISION. 
       PROGRAM-ID. CIRCUMFERENCE AS "CIRCUMFERENCE".
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           01 CIRCLE.
               05 WS-PI-VALUE PIC 9V9(5) VALUE 3.14159.
               05 WS-TOTAL-CIRCUMFERNECE PIC 9(2)V9(3).
               05 WS-TOTAL-AREA PIC 9(2)V9(3).
           01 CYLINDER.
               05 WS-HEIGHT PIC 9(3).
               05 WS-TOTAL-SURFACE-AREA PIC 9(2)V9(3).
               05 WS-TOTAL-VOLUME PIC 9(2)V9(3).
           01 WS-RADIUS PIC 9(3).
           01 WS-CHOICE PIC 9.
           01 WS-DISPLAY PIC -----.--.

       PROCEDURE DIVISION.
           DISPLAY "What shape do you want to work out?".
           DISPLAY "(1-Circle) (2-Cylinder)".
           ACCEPT WS-CHOICE.

           IF WS-CHOICE = 1 THEN
               DISPLAY "Enter a radius for the circle: "
               ACCEPT WS-RADIUS
               DISPLAY "What would you like to do with this shape?"
               DISPLAY "(1-Area) (2-Circumference) (3-Both)"
               ACCEPT WS-CHOICE

               IF WS-CHOICE = 1 THEN
                   COMPUTE WS-TOTAL-AREA = 
                   WS-PI-VALUE * (WS-RADIUS ** 2)
                   MOVE WS-TOTAL-AREA TO WS-DISPLAY
                   DISPLAY "Area = " WS-DISPLAY
               END-IF
               IF WS-CHOICE = 2 THEN
                   COMPUTE WS-TOTAL-CIRCUMFERNECE = 
                   WS-RADIUS * WS-PI-VALUE * 2
                   MOVE WS-TOTAL-CIRCUMFERNECE TO WS-DISPLAY
                   DISPLAY "Circumference = " WS-DISPLAY
               END-IF
               IF WS-CHOICE = 3 THEN
                   COMPUTE WS-TOTAL-AREA = 
                   WS-PI-VALUE * (WS-RADIUS ** 2)
                   MOVE WS-TOTAL-AREA TO WS-DISPLAY
                   DISPLAY "Area = " WS-DISPLAY
                   COMPUTE WS-TOTAL-CIRCUMFERNECE = 
                   WS-RADIUS * WS-PI-VALUE * 2
                   MOVE WS-TOTAL-CIRCUMFERNECE TO WS-DISPLAY
                   DISPLAY "Circumference = " WS-DISPLAY
               END-IF
            END-IF.
           
            IF WS-CHOICE = 2 THEN
                   DISPLAY "Enter a radius for the cylinder: "
                   ACCEPT WS-RADIUS
                   DISPLAY "Enter a height: "
                   ACCEPT WS-HEIGHT
                   DISPLAY "What would you like to do with this shape?"
                   DISPLAY "(1-Surface area) (2-Volume) (3-Both)"
                   ACCEPT WS-CHOICE
                   IF WS-CHOICE = 1 THEN
                       COMPUTE WS-TOTAL-SURFACE-AREA = 
                       (2 * WS-PI-VALUE * WS-RADIUS * WS-HEIGHT) +
                       (2 * WS-PI-VALUE * (WS-RADIUS ** 2))
                       MOVE WS-TOTAL-SURFACE-AREA TO WS-DISPLAY
                       DISPLAY "Surface area = " WS-DISPLAY
                   END-IF
                   IF WS-CHOICE = 2 THEN
                       COMPUTE WS-TOTAL-VOLUME = 
                       (WS-PI-VALUE * (WS-RADIUS ** 2)) * WS-HEIGHT
                       MOVE WS-TOTAL-VOLUME TO WS-DISPLAY
                       DISPLAY "Volume = "  WS-DISPLAY
                   END-IF
                   IF WS-CHOICE = 3 THEN 
                       COMPUTE WS-TOTAL-SURFACE-AREA = 
                       (2 * WS-PI-VALUE * WS-RADIUS * WS-HEIGHT) +
                       (2 * WS-PI-VALUE * (WS-RADIUS ** 2))
                       MOVE WS-TOTAL-SURFACE-AREA TO WS-DISPLAY
                       DISPLAY "Surface area = " WS-DISPLAY
                       COMPUTE WS-TOTAL-VOLUME = 
                       (WS-PI-VALUE * (WS-RADIUS ** 2)) * WS-HEIGHT
                       MOVE WS-TOTAL-VOLUME TO WS-DISPLAY
                       DISPLAY "Volume = "  WS-DISPLAY
                   END-IF
            END-IF.
                
    

    