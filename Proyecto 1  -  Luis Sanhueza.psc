Algoritmo calculocostoproducto
	// Entrada de datos
    Escribir "Ingrese el precio original del producto:"
    Leer precio_original
    Escribir "Ingrese el porcentaje de descuento (0 si no aplica):"
    Leer descuento_porcentaje
    Escribir "Ingrese el porcentaje de IVA:" 
    Leer iva_porcentaje
    Escribir "Ingrese la cantidad de productos a comprar:"
    Leer cantidad
    Escribir "Ingrese el peso total del paquete (en kg):"
    Leer peso_paquete
    Escribir "Ingrese el destino del envío:"
    Leer destino
	
    // Cálculo del descuento
    descuento <- (precio_original * descuento_porcentaje) / 100
    precio_con_descuento <- precio_original - descuento
	
    // Cálculo del IVA
    iva <- (precio_con_descuento * iva_porcentaje) / 100
    precio_con_iva <- precio_con_descuento + iva
	
    // Descuento por cantidad (5% si más de 1 unidad)
    Si cantidad > 1 Entonces
        descuento_cantidad <- (precio_con_iva * 5) / 100
        precio_con_descuento_cantidad <- precio_con_iva - descuento_cantidad
    Sino
        descuento_cantidad <- 0
        precio_con_descuento_cantidad <- precio_con_iva
    FinSi
	
    // Cálculo del costo de envío
    costo_envio <- 10 + (2 * peso_paquete)
	
    // Cálculo del costo total
    costo_total <- (precio_con_descuento_cantidad * cantidad) + costo_envio
	
    // Salida de resultados
    Escribir "Desglose del costo final:"
    Escribir "Precio original: ", precio_original
    Escribir "Descuento aplicado: ", descuento
    Escribir "IVA aplicado: ", iva
    Escribir "Descuento por cantidad: ", descuento_cantidad
    Escribir "Costo de envío: ", costo_envio
    Escribir "Costo total del producto: ", costo_total
	
FinAlgoritmo
