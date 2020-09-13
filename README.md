# Calculadora de tabla de amortización de préstamos por el sistema frances

Para poder compilarlo en linux:

### Instalamos el compilador
sudo apt install open-cobol
whereis cobc; which cobc
cobc: /usr/bin/cobc /usr/share/man/man1/cobc.1.gz
/usr/bin/cobc

### Compilamos
cobc -free -x -o frances PRESTAMO-FRANCES.cob

### Ejecutamos
./frances

### Ejemplo de output:

./frances<br>
Calculo de la cuota de un prestamo frances
Introduce la cantidad prestada
1000
Introduce el interes anual
8
Introduce el plazo en meses
12

Cuota mensual: 086.98

Plazo actual: 01 <br>
Cuota interes: 006.66 <br>
Cuota amortizacion: 080.32 <br>
Capital amortizado: 0080.32 <br>
Capital vivo: 0919.68 <br>


(...)

Plazo actual: 12 <br>
Cuota interes: 000.57 <br>
Cuota amortizacion: 086.45 <br>
Capital amortizado: 1000.00 <br>
Capital vivo: 0000.00 <br>

