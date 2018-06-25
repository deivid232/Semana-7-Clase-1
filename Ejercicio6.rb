=begin
Ejercicio 6: Operaciones típicas sobre un hash
Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el valor es el precio de este.

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
Obtener el plato mas caro.
Obtener el plato mas barato.
Sacar el promedio del valor de los platos.
Crear un arreglo con solo los nombres de los platos.
Crear un arreglo con solo los valores de los platos.
Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.
=end
platos_precios = { 'ceviche' => 3500, 'ensalada' => 2000, 'jugo natural' => 1500}
a = platos_precios
puts a
a.to_s

b = a.key(a.values.map.max)
puts b

b = a.key(a.values.map.min)
puts b

suma = 0
contar = 0
a.values.each do |b|
  suma += b
  contar += 1
end
puts suma / contar.to_f

platos = ['ceviche', 'ensalada', 'jugo natural']
precios = [3500, 2000, 1500]



a.each do |key, value|
  a[key] = value * 1.19
end
puts a

a.each do |key, value|
  if key.scan(' ') == [' ']
    a[key] = value * 0.8
  end
end
  puts a
