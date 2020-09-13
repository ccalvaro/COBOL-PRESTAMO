       IDENTIFICATION DIVISION.
       PROGRAM-ID.  PRESTAMO-FRANCES.
       AUTHOR. Alvaro Calo. 
       INSTALLATION. APRENDIENDO COBOL S.L.
       DATE-WRITTEN. 12/09/2020
       DATE-COMPILED. 12/09/2020 
       SECURITY. NON-CONFIDENTIAL.
       ENVIRONMENT DIVISION. 
       DATA DIVISION. 
       LOCAL-STORAGE SECTION.
       01 PRESTADO PIC 9999.
       01 INTERES PIC 99V99.
       01 INTERES-MES PIC 9V999999999.
       01 PLAZO-M PIC 99.
       01 NUM PIC 9V999999999.
       01 DEN PIC 9V999999999.
       01 MENSUAL PIC 999V99.
       01 PLAZO-ACT PIC 99.
       01 CAP-AMORT PIC 9999V99.
       01 CAP-VIVO PIC 9999V99.
       01 CUOTA-PEND PIC 99.
       01 CUOTA-INTE PIC 999V99.
       01 CUOTA-AMOR PIC 999V99.

       PROCEDURE DIVISION.
           DISPLAY "Calculo de la cuota de un prestamo frances".
           DISPLAY "Introduce la cantidad prestada".
           ACCEPT PRESTADO.
           DISPLAY "Introduce el interes anual".
           ACCEPT INTERES.
           COMPUTE INTERES = INTERES/100.
           COMPUTE INTERES-MES = INTERES / 12.
           DISPLAY "Introduce el plazo en meses".
           ACCEPT PLAZO-M.
           DISPLAY "------------------------"
           COMPUTE NUM = INTERES-MES * (1 + INTERES-MES) ** PLAZO-M.  
           COMPUTE DEN = (1+INTERES-MES ) ** PLAZO-M - 1.
           COMPUTE MENSUAL = PRESTADO * (NUM/DEN).
           DISPLAY "Cuota mensual: " MENSUAL.
           DISPLAY "------------------------"
           MOVE PRESTADO TO CAP-VIVO.
           COMPUTE CUOTA-PEND = PLAZO-M. 
           COMPUTE PLAZO-ACT = 0.
           COMPUTE CAP-AMORT = 0.
           COMPUTE CAP-VIVO = PRESTADO.
           PERFORM UNTIL CUOTA-PEND = 0
              COMPUTE PLAZO-ACT = PLAZO-ACT + 1
              COMPUTE CUOTA-INTE = CAP-VIVO * INTERES-MES 
              IF PLAZO-ACT = PLAZO-M THEN 
                COMPUTE CUOTA-AMOR = CAP-VIVO
              END-IF 
              IF PLAZO-ACT NOT = PLAZO-M THEN  
                COMPUTE CUOTA-AMOR = MENSUAL - CUOTA-INTE
              END-IF 
              COMPUTE CAP-AMORT = CAP-AMORT + CUOTA-AMOR
              COMPUTE CAP-VIVO = CAP-VIVO - CUOTA-AMOR
              DISPLAY "Plazo actual: " PLAZO-ACT 
              DISPLAY "Cuota interes: " CUOTA-INTE 
              DISPLAY "Cuota amortizacion: " CUOTA-AMOR 
              DISPLAY "Capital amortizado: " CAP-AMORT
              DISPLAY "Capital vivo: " CAP-VIVO
              DISPLAY "------------------------" 
              COMPUTE CUOTA-PEND = CUOTA-PEND - 1
           END-PERFORM.
           STOP RUN.