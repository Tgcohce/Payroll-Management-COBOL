       IDENTIFICATION DIVISION.
       PROGRAM-ID. PayrollManagement.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 ID-NUMERIC       PIC 9(3).
           01 HOURS-NUMERIC    PIC 9(3).
           01 RATE-NUMERIC     PIC 9(5)V99.
           01 TAXPRCNT-NUM     PIC 9V99.
           01 TOTALOWED-NUM    PIC 9(7)V99.
           01 TAXVALUE-NUM     PIC 9(7)V99.
           01 NETPAY-NUM       PIC 9(7)V99.

           01 NAME-ALPHA       PIC X(20).

           01 ID-DISPLAY       PIC Z(3).
           01 HOURS-DISPLAY    PIC ZZ9.
           01 RATE-DISPLAY     PIC ZZZZ9.99.
           01 TAXPRCNT-DISPLAY PIC Z.99.
           01 TOTALOWED-DISPLAY PIC ZZZZZZ9.99.
           01 TAXVALUE-DISPLAY  PIC ZZZZZZ9.99.
           01 NETPAY-DISPLAY    PIC ZZZZZZ9.99.

       PROCEDURE DIVISION.
           DISPLAY "Enter Employee ID (numeric up to 3 digits): "
           ACCEPT ID-NUMERIC
           DISPLAY "Enter Employee Name (up to 20 chars): "
           ACCEPT NAME-ALPHA
           DISPLAY "Enter Hours Worked (up to 3 digits): "
           ACCEPT HOURS-NUMERIC
           DISPLAY "Enter Employee Hourly Rate (format: ####.##): "
           ACCEPT RATE-NUMERIC
           DISPLAY "Enter Tax Percentage (format: #.##, e.g. 0.13): "
           ACCEPT TAXPRCNT-NUM

           MULTIPLY HOURS-NUMERIC BY RATE-NUMERIC GIVING TOTALOWED-NUM
           MULTIPLY TOTALOWED-NUM BY TAXPRCNT-NUM GIVING TAXVALUE-NUM
           COMPUTE NETPAY-NUM = TOTALOWED-NUM - TAXVALUE-NUM

           MOVE ID-NUMERIC        TO ID-DISPLAY
           MOVE HOURS-NUMERIC     TO HOURS-DISPLAY
           MOVE RATE-NUMERIC      TO RATE-DISPLAY
           MOVE TAXPRCNT-NUM      TO TAXPRCNT-DISPLAY
           MOVE TOTALOWED-NUM     TO TOTALOWED-DISPLAY
           MOVE TAXVALUE-NUM      TO TAXVALUE-DISPLAY
           MOVE NETPAY-NUM        TO NETPAY-DISPLAY

           DISPLAY "Name: " NAME-ALPHA
           DISPLAY "Employee ID: " ID-DISPLAY
           DISPLAY "Hours Worked: " HOURS-DISPLAY
           DISPLAY "Employee Hourly Rate: " RATE-DISPLAY
           DISPLAY "Tax Percentage: " TAXPRCNT-DISPLAY
           DISPLAY "Gross Pay: " TOTALOWED-DISPLAY
           DISPLAY "Tax Deduction: " TAXVALUE-DISPLAY
           DISPLAY "Net Pay: " NETPAY-DISPLAY
           STOP RUN.
