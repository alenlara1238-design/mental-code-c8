Algoritmo Ejercicio1
	Definir precio Como Real
	Definir descuento Como Real
	
	precio <- SolicitarPrecio
	descuento <- CalcularDescuento(precio)
	ImprimirFactura(precio, descuento)
FinAlgoritmo

Funcion precio <- SolicitarPrecio
	Definir precio Como Real
	
	Escribir "Ingrese el precio del producto: "
	Leer precio
FinFuncion

Funcion descuento <- CalcularDescuento(precioProducto)
	Definir descuento Como Real
	
	descuento <- precioProducto * 0.10
FinFuncion

SubProceso ImprimirFactura(precioProducto, valorDescuento)
	Escribir "-------FACTURA-------"	
	Escribir "Precio del producto: ", precioProducto
	Escribir "Descuento aplicado: ", valorDescuento
	Escribir "Total a pagar: ", precioProducto - valorDescuento
FinSubProceso
	