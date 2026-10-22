Algoritmo Asistencia
	Definir estudiante, presentes Como Entero
	Definir asiste Como Caracter	
	presentes <- 0
	
	Para estudiante <- 1 Hasta 30 Hacer
		Escribir "Estudiante ", estudiante
		Escribir  "Ingrese P si está presente o A si está ausente: "
		Leer asiste
		
		Si asiste = "p" O asiste = "P" Entonces
			presentes <- presentes + 1
		FinSi
	FinPara
	
	Escribir "Total de asistentes es ", presentes
FinAlgoritmo
