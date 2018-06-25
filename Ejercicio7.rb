inventario = { 'Notebook' => 4, 'PC Escritorio' => 6, 'Routers' => 10, 'Impresora' => 6 }
opciones = ['Ingrese una Opcion', '1 Agregar un item', '2 Eliminar un item', '3 Actualizar informacion del item', '4 Ver stock disponible en tienda', '5 Ver el producto con mayor stock', '6 Preguntar si un item existe', '7 Exit']
a = inventario
b = opciones

def agregar_item_stock(a)
  puts 'Agrega un item'
  puts 'Nombre del producto'
  c1 = gets.chomp
  puts 'Cuantos productos son'
  c2 = gets.chomp.to_i
  a[c1] = c2
  puts '#----------------------------------------------------------------------------#'
  puts "Agregaste #{c1}"
  puts '#----------------------------------------------------------------------------#'
end

def eliminar_item(a)

  puts 'Elimina un item'
  c1 = gets.chomp
  if a[c1]
    puts '#----------------------------------------------------------------------------#'
    puts "Eliminaste #{c1}"
    puts '#----------------------------------------------------------------------------#'
    a.delete(c1)
  else
    puts '#----------------------------------------------------------------------------#'
    puts 'El elemento no existe'
    puts '#----------------------------------------------------------------------------#'
  end
end

def actualizar_item_stock(a)
  puts a
  puts 'Escriba el nombre del producto que quieras actualizar'
  c1 = gets.chomp
  if a[c1]
    puts 'El elemento existe'
    puts 'Escriba la cantidad del produto'
    c2 = gets.chomp
    a[c1] = c2
  else
    puts '#----------------------------------------------------------------------------#'
    puts 'No esta'
    puts '#----------------------------------------------------------------------------#'
  end
end

def stock_total(a)
  suma = 0
  a.values.each do |values|
    suma += values
  end
  puts '#----------------------------------------------------------------------------#'
  puts "EL total de productos en stock es de #{suma}"
  puts '#----------------------------------------------------------------------------#'
end

def item_mayor_stock(a)
  max = a.max_by { |_key, value| value }
  puts '#----------------------------------------------------------------------------#'
  puts "El producto con mayor stock es #{max[0]} con #{max[1]} elementos."
  puts '#----------------------------------------------------------------------------#'
end

def preguntar_si_existe_item(a)
  puts 'Escribe nombre del producto que quieras saber que existe'
  elem = gets.chomp
  a[elem]
  if a[elem]
    puts '#----------------------------------------------------------------------------#'
    puts 'El producto si existe'
    puts '#----------------------------------------------------------------------------#'
  else
    puts '#----------------------------------------------------------------------------#'
    puts 'El producto no existe'
    puts '#----------------------------------------------------------------------------#'

  end
end

c = 0
while  c != 7
  puts b
  puts '#----------------------------------------------------------------------------#'
  puts a
  puts '#----------------------------------------------------------------------------#'

  c = gets.chomp.to_i
  puts case c
       when 1
         agregar_item_stock(a)

       when 2
         eliminar_item(a)

       when 3
         actualizar_item_stock(a)

       when 4
         stock_total(a)
       when 5
         item_mayor_stock(a)

       when 6
         preguntar_si_existe_item(a)
       when 7
         puts '#----------------------------------------------------------------------------#'
         puts 'adios'
         puts '#----------------------------------------------------------------------------#'
       else
         puts '#----------------------------------------------------------------------------#'
         puts 'opcion incorrecta'
         puts '#----------------------------------------------------------------------------#'
       end
end
puts '#----------------------------------------------------------------------------#'
