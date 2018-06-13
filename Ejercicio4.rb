=begin
Ejercicio 4: Array y Hashes
Se tienen dos arrays uno con el nombre de personas y otro con las edades, se pide generar un hash con el nombre y edad de cada persona (se asume que no existen dos personas con el mismo nombre)

personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]
Se pide generar un hash con la información:

personas_hash = {"Carolina": 32, "Alejandro":28, "María Jesús":41, "Valentín":19}
Crear un método que reciba el hash y devuelva el promedio de las edades del hash pasado como argumento.

=end

personas = ['Carolina', 'Alejandro', 'Maria Jesus', 'Valentin']
edades = [32, 28, 41, 19]

h = Hash[personas.zip edades]
puts h


suma = 0
contar = 0
h.values.each do |b|
  suma += b
  contar += 1
end
puts suma / contar.to_f
