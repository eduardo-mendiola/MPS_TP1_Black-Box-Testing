//*******************************************************************************************************************************************
// IFTS Nro 29 - TECNICATURA SUPERIOR EN DESARROLLO DE SOFTWARE
// Metodología de Pruebas de Sistemas 2do 
// Trabajo Práctico N°1

// Profesor: Kevin Axel Del Bello
// Alumno: Eduardo Ezequiel Mendiola
// Comisión: C
// Fecha: 21-04-2025
//*******************************************************************************************************************************************
//                  Programa de login con menú de opciones para el analisis con pruebas de Caja Negra (black box testing)   
//*******************************************************************************************************************************************
Algoritmo LoginConMenuYLibros
	Definir user, pass Como Cadena;
	Definir intentos, DIMARRAY, opcion, subopcion, i Como Entero;
	intentos = 3;
	DIMARRAY = 3;
	
	Definir userCorrecto, passCorrecta Como Cadena;
	userCorrecto = "admin";
	passCorrecta = "1234";
	
	// Arreglos de libros
	Definir lenguajes, bd, cienciaDatos Como Cadena;
	
	Dimension lenguajes[DIMARRAY], bd[DIMARRAY], cienciaDatos[DIMARRAY];
	
	lenguajes[0] = "Clean Code - Robert C. Martin";
	lenguajes[1] = "Effective Java - Joshua Bloch";
	lenguajes[2] = "Python Crash Course - Eric Matthes";
	
	bd[0] = "Diseño de Bases de Datos - Teorema";
	bd[1] = "SQL for Dummies - Allen G. Taylor";
	bd[2] = "MySQL Cookbook - Paul DuBois";
	
	cienciaDatos[0] = "Hands-On ML - Aurélien Géron";
	cienciaDatos[1] = "Data Science from Scratch - Joel Grus";
	cienciaDatos[2] = "Python for Data Analysis - Wes McKinney";
	
	Repetir
		Escribir "#************************************#";
		Escribir "#      ** Ingreso al sistema **      #";
		Escribir "#************************************#";
		Escribir "";
		
		Escribir "Ingrese usuario:";
		Leer user;
		Escribir "Ingrese contraseña:";
		Leer pass;
		
		Si user = userCorrecto Y pass = passCorrecta Entonces
			Escribir "¡Bienvenido ", user, "!";
			
			Repetir
				Escribir "#************************************#";
				Escribir "#             ** MENÚ **             #";
				Escribir "#************************************#";
				Escribir "1. Visualizar listas de libros";
				Escribir "2. Salir";
				Leer opcion;
				
				Segun opcion Hacer
					1:
						Escribir "Seleccione la categoría de libros:";
						Escribir "1. Lenguajes de Programación";
						Escribir "2. Bases de Datos";
						Escribir "3. Ciencia de Datos";
						Leer subopcion;
						
						Segun subopcion Hacer
							1:
								Para i = 0 Hasta DIMARRAY - 1 Con Paso 1 Hacer
									Escribir lenguajes[i];
								Fin Para
							2:
								Para i = 0 Hasta DIMARRAY - 1 Con Paso 1 Hacer
									Escribir bd[i];
								Fin Para
							3:
								Para i = 0 Hasta DIMARRAY - 1 Con Paso 1 Hacer
									Escribir cienciaDatos[i];
								Fin Para
							De Otro Modo:
								Escribir "Opción no válida.";
						Fin Segun
					2:
						Escribir "Saliendo del programa...";
					De Otro Modo:
						Escribir "Opción inválida.";
				Fin Segun
				
			Hasta Que opcion = 2
			
			intentos = 0;
		Sino
			intentos = intentos - 1;
			Escribir "Usuario o contraseña incorrectos. Intentos restantes: ", intentos;
		Fin Si
		
	Hasta Que intentos = 0
	
	Si intentos = 0 Entonces
		Escribir "No se pudo iniciar sesión. Intente más tarde.";
	Fin Si
	
FinAlgoritmo

