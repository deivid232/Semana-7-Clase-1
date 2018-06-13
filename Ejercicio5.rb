=begin
Ejercicio 5:
Array y Hashes
Dados los siguientes array:

meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]
Generar un hash que contenga los meses como llave y las ventas como valor:

h = {'Enero': 2000, 'Febrero': 3000 ... }
En base al hash generado:

Invertir las llaves y los valores del hash.
Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)
=end

meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

h = Hash[meses.zip ventas]
puts h

a = h.invert
puts a

c = a.invert.key(a.invert.values.max)
puts c
