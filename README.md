# Calculadora de tabla de amortización de préstamos por el sistema frances

Para poder compilarlo en linux:

## Instalamos el compilador
sudo apt install open-cobol
whereis cobc; which cobc
cobc: /usr/bin/cobc /usr/share/man/man1/cobc.1.gz
/usr/bin/cobc

## Compilamos
cobc -free -x -o frances PRESTAMO-FRANCES.cob

## Ejecutamos
./frances

## Ejemplo de output:

./frances
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

Plazo actual: 02
Cuota interes: 006.13
Cuota amortizacion: 080.85
Capital amortizado: 0161.17
Capital vivo: 0838.83

Plazo actual: 03
Cuota interes: 005.59
Cuota amortizacion: 081.39
Capital amortizado: 0242.56
Capital vivo: 0757.44

Plazo actual: 04
Cuota interes: 005.04
Cuota amortizacion: 081.94
Capital amortizado: 0324.50
Capital vivo: 0675.50

Plazo actual: 05
Cuota interes: 004.50
Cuota amortizacion: 082.48
Capital amortizado: 0406.98
Capital vivo: 0593.02

Plazo actual: 06
Cuota interes: 003.95
Cuota amortizacion: 083.03
Capital amortizado: 0490.01
Capital vivo: 0509.99

Plazo actual: 07
Cuota interes: 003.39
Cuota amortizacion: 083.59
Capital amortizado: 0573.60
Capital vivo: 0426.40

Plazo actual: 08
Cuota interes: 002.84
Cuota amortizacion: 084.14
Capital amortizado: 0657.74
Capital vivo: 0342.26

Plazo actual: 09
Cuota interes: 002.28
Cuota amortizacion: 084.70
Capital amortizado: 0742.44
Capital vivo: 0257.56

Plazo actual: 10
Cuota interes: 001.71
Cuota amortizacion: 085.27
Capital amortizado: 0827.71
Capital vivo: 0172.29

Plazo actual: 11
Cuota interes: 001.14
Cuota amortizacion: 085.84
Capital amortizado: 0913.55
Capital vivo: 0086.45

Plazo actual: 12
Cuota interes: 000.57
Cuota amortizacion: 086.45
Capital amortizado: 1000.00
Capital vivo: 0000.00

