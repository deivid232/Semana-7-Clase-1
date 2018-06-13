# Ejercicio 2: Corrección de errores
# Se tiene el siguiente hash:
#
# productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}
# y se realiza la siguiente consulta para conocer los productos existentes:
#
# Productos.each { |valor, producto| puts producto }
# Corrige el error para mostrar la información solicitada.
#
# Se quiere agregar un nuevo producto al hash:
#
# producto[2200] = cereal
# Corrige la instrucción para agregar el producto.
#
# Se quiere actualizar el precio de la bebida:
#
# producto[:bebida] = 2000
# Corrige la instrucción para actualizar el valor del producto existente.
#
# Convertir el hash en un array y guardarlo en una nueva variable.
#
# Eliminar el producto 'galletas' del hash.

productos = { 'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750 }

productos.each { |produc, _precio| puts produc }

# y se realiza la siguiente consulta para conocer los productos existentes:

productos.each_with_index { |_valor, index| puts index  }

# Corrige el error para mostrar la información solicitada.

# Se quiere agregar un nuevo producto al hash:

# producto[2200] = cereal

productos['cereal'] = 2200
puts productos
# Corrige la instrucción para agregar el producto.

# Se quiere actualizar el precio de la bebida:
productos['bebida'] = 2000
puts productos
nuevo = productos.to_a
print nuevo
puts
productos.delete("galletas")
puts productos





# producto[:bebida] = 2000
# Corrige la instrucción para actualizar el valor del producto existente.

# Convertir el hash en un array y guardarlo en una nueva variable.
