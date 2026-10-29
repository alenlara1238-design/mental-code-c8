Algoritmo Ejercicio3
	
	Definir password Como Texto
	Definir autorizado Como Logico
	Definir intentos Como Entero
	
	intentos <- 0
	autorizado <- Falso
	
	Mientras intentos < 3 Y autorizado == Falso Hacer
		password <- LeerPassword
		autorizado  <-  estaAutorizado(password)
		intentos <- intentos + 1
	FinMientras
	
	MostrarResultado(autorizado)
FinAlgoritmo

Funcion password <- LeerPassword
	Definir password Como Texto
	
	Escribir "Ingrese password: "
	Leer password
FinFuncion

Funcion autorizado <- estaAutorizado(password)
	Definir autorizado Como Logico
	
	Si password == "1234" Entonces
		autorizado <- Verdadero
	SiNo
		autorizado <- Falso
	FinSi
FinFuncion

SubProceso MostrarResultado(autorizado)
	Si autorizado Entonces
		Escribir "Acceso Permitido"
	SiNo
		Escribir "Acceso denegado"
	FinSi
FinSubProceso



