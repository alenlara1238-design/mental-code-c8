Algoritmo Contrasena
	Definir password Como Caracter
	Definir intentos Como Entero
	
	
	Escribir "ingrese la contrasena: "
	Leer password
	
	intentos <- 1
	
	Mientras password <> "mentalcode2026" Y intentos < 3 Hacer
		Escribir "Contrasena incorrecta. Ingrese nuevamente: "
		Leer password
		intentos <- intentos + 1
	FinMientras
	
	Si  password = "mentalcode2026" Entonces
		Escribir "Acceso concedido"
	SiNo
		Escribir "Cuenta bloqueada"
	FinSi
	
	
	
	
	
FinAlgoritmo
