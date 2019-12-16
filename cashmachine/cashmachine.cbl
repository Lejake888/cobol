       IDENTIFICATION DIVISION. 
       PROGRAM-ID. CASHMACHINE as "CASHMACHINE".
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           01 STORED-VALUES.
               05 WS-CORRECT-PIN PIC 9(4) VALUE 1293.
               05 WS-ACCOUNT-BALANCE PIC 9(7)V9(2) VALUE 5000.
           01 PIN-CHANGING.
               05 WS-NEW-PIN PIC 9(4).
               05 WS-CONFIRM-PIN PIC 9(4).
           01 MENU-CHOICE.
               05 WS-CHOICE PIC 9.
           01 USER-INPUTS.
               05 WS-INPUTTED-PIN PIC 9(4).
               05 WS-AMOUNT-TO-INPUT PIC 9(7)V9(2).
           01 WS-DISPLAY-VALUE PIC ---,---,---,---,---,--9.99.
       PROCEDURE DIVISION.
           DISPLAY "[ENTER A PIN]: ".
           ACCEPT WS-INPUTTED-PIN.
           
           PERFORM 0100-PIN-CHECK.

           DISPLAY "[WHAT WOULD YOU LIKE TO DO]: ". 
           DISPLAY "(1. SEE BALANCE)". 
           DISPLAY "(2. WITHDRAW MONEY)".
           DISPLAY "(3. DEPOSIT MONEY)".
           DISPLAY "(4. CHANGE PIN)".
           ACCEPT WS-CHOICE.

           IF WS-CHOICE = 1 THEN
                MOVE WS-ACCOUNT-BALANCE TO WS-DISPLAY-VALUE
                DISPLAY "[CURRENT BALANCE]: £" WS-DISPLAY-VALUE
           END-IF.

           IF WS-CHOICE = 2 THEN
               DISPLAY "[HOW MUCH MONEY DO YOU WANT TO WITHDRAW?]: "
               ACCEPT WS-AMOUNT-TO-INPUT
               IF WS-AMOUNT-TO-INPUT > WS-ACCOUNT-BALANCE THEN
                   DISPLAY "[INVALID TRANSACTION, INSUFFICIENT FUNDS]"
               ELSE 
                   COMPUTE WS-ACCOUNT-BALANCE = 
                   WS-ACCOUNT-BALANCE - WS-AMOUNT-TO-INPUT
                   DISPLAY "[TRANSACTION COMPLETE]"
                   MOVE WS-AMOUNT-TO-INPUT TO WS-DISPLAY-VALUE
                   DISPLAY "[AMOUNT DEPOSITED]: £" WS-DISPLAY-VALUE
                   MOVE WS-ACCOUNT-BALANCE TO WS-DISPLAY-VALUE
                   DISPLAY "[REMAINING BALANCE]: £" WS-DISPLAY-VALUE
               END-IF
            END-IF.

            IF WS-CHOICE = 3 THEN
               DISPLAY "[HOW MUCH MONEY DO YOU WANT TO DEPOSIT?]: "
               ACCEPT WS-AMOUNT-TO-INPUT
               COMPUTE WS-ACCOUNT-BALANCE = 
               WS-ACCOUNT-BALANCE + WS-AMOUNT-TO-INPUT
               DISPLAY "[TRANSACTION COMPLETE]"
               MOVE WS-AMOUNT-TO-INPUT TO WS-DISPLAY-VALUE
               DISPLAY "[AMOUNT DEPOSITED]: £" WS-DISPLAY-VALUE
               MOVE WS-ACCOUNT-BALANCE TO WS-DISPLAY-VALUE
               DISPLAY "[REMAINING BALANCE]: £" WS-DISPLAY-VALUE
            END-IF.

            IF WS-CHOICE = 4 THEN
               DISPLAY "[ENTER YOUR PIN AGAIN]:"
               ACCEPT WS-INPUTTED-PIN
               PERFORM 02000-CHANGE-PIN
               PERFORM 0100-PIN-CHECK
            END-IF.

           0100-PIN-CHECK.

           IF WS-INPUTTED-PIN = WS-CORRECT-PIN THEN
               DISPLAY "WELCOME BACK"
           ELSE 
               DISPLAY "INCORRECT PIN"
               STOP RUN
           END-IF.
           
           02000-CHANGE-PIN.
           
           DISPLAY "[ENTER YOUR NEW PIN]".
           ACCEPT WS-NEW-PIN.
           DISPLAY "[CONFIRM YOUR NEW PIN]".
           ACCEPT WS-CONFIRM-PIN.

           IF WS-NEW-PIN = WS-CONFIRM-PIN THEN
               DISPLAY "[PIN CHANGED]"
               MOVE WS-NEW-PIN TO WS-CORRECT-PIN
               MOVE ZEROS TO WS-NEW-PIN
               MOVE ZEROS TO WS-CONFIRM-PIN
           ELSE 
               DISPLAY "[UNSUCCESSFUL CHANGE, PINS NOT THE SAME]"
               STOP RUN
           END-IF.

       END PROGRAM CASHMACHINE.
