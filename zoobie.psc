Algoritmo zoobieGENZ 
	Definir muestra, datos Como Caracter
	Definir n, i Como Entero

	Escribir "-----Sean bienvenidos a la busqueda del gen Z, Se recogera una muestra de cuatro posibles bases de (A,B,C,D) unicamente de 4x4, 3x3 o 37x37 como correcto!------"		
	Escribir ""
	
	Repetir
		
		Escribir "Ingrese el tamaño de la muestra recuerda que debe ser 3x3, 4x4 o 37x37: "
		leer n 
	Mientras que  n <> 3 y n <> 4 y n <> 37 
	
	hacer 
	Escribir "Ingrese el GEN Z a evaluar con longitud ","|",n*n,"|"," si no, vuelva a intentarlo!" 
	leer datos
	Mientras Que Longitud(datos)<> n*n
	i = 1
	Hacer
		Escribir" Ingrese nuevamente el GEN Z a evaluar "
		leer datos
	Mientras Que Subcadena(datos,i,i) <> "a" y Subcadena(datos,i,i) <> "b" y Subcadena(datos,i,i) <> "c" y Subcadena(datos,i,i) <> "d" 

	Dimension muestra[n,n]
	
	
	si Subcadena(datos,i,i) = "a" o Subcadena(datos,i,i) = "b" o Subcadena(datos,i,i) = "c" o Subcadena(datos,i,i) = "d" Entonces

		integradorzoombie(muestra, datos, n)
	sino	
		Escribir "BASE NO ACTA PARA TOMAR UNA MUESTRA"
	FinSi	
	
FinAlgoritmo

SubProceso  integradorzoombie(muestra Por Referencia, datos Por Referencia, n Por Referencia)
	definir i, j,letra, cdiag, cdiag2 Como Entero
	Definir Diagonalprincipal, diagonalsecundaria Como Caracter
	Dimension Diagonalprincipal(n),diagonalsecundaria(n)
	
	letra = 0
		para i = 0 Hasta n - 1 Con Paso 1  Hacer 		
			
			para j = 0 hasta n - 1 Con Paso 1 Hacer
				muestra[i,j] = Subcadena(datos,letra,letra)
 
				letra = letra + 1 //contador para recorrer toda la frase			
			FinPara
		FinPara	
		para i = 0 Hasta n - 1 con paso 1 Hacer
			para j = 0 hasta n - 1 Con Paso 1  Hacer
				Escribir Sin Saltar muestra[i,j] " | "
			FinPara
			Escribir ""
		FinPara
	
	para i = 0 Hasta n - 1 con paso 1 Hacer
		para j = 0 hasta n - 1 Con Paso 1  Hacer
			si i = j   Entonces
				Diagonalprincipal(i)= muestra[i,j]
				
			FinSi
			si i + j = n - 1 Entonces
				diagonalsecundaria(i)= muestra[i,j]
				
			FinSi
		FinPara
	FinPara
	cdiag= 0
	cdiag2 = 0
	para i = 0 Hasta n -1 Hacer
		si Diagonalprincipal(i) = muestra[0,0]
			cdiag = cdiag + 1
		FinSi
		si Diagonalsecundaria(i) = muestra[0,n-1]
			cdiag2 = cdiag2 + 1
		FinSi
	FinPara
	
	si cdiag = n y cdiag2 = n  Entonces
		Escribir " ----->  GEN Z  Detectado en la diagonal principal y secundaria! BUEN TRABAJO "
	SINO 
		Escribir " ----->  GEN Z NO Detectado en la diagonal principal y secundaria. =( "
	FinSi
	
FinSubProceso

	