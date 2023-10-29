Algoritmo figuras_geometricas
	definir simbolo como texto;
	DEFINIR altrec,basrec como real;
	Definir OPCION como real;
	DEFINIR ALTURA COMO REAL;
	Escribir "SELECCIONA LA FIGURA ";
	Escribir " OPCION 1 rectangulo" ;
	Escribir " OPCION 2 cuadrado" ;
	Escribir " OPCION 3 triangulo" ;
	LEER OPCION;
	Si OPCION<=0 O OPCION>=4 Entonces
		Escribir "ERROR DE OPCION SELECCIONE UNA DE LAS OPCIONES 1 2 3 ";
		
	
		
	Fin Si
	SI OPCION=1 Entonces
		ESCRIBIR "RECTANGULO";
		escribir "ESCRIBE EL SIMBOLO CON EL QUE QUIERES QUE SE IMPIMA LA FIGURA ";
		LEER simbolo;
		Escribir "ESCRIBE ALTURA ";
		LEER ALTURA;
		Escribir "ESCRIBE BASE "
		Leer BASE;
		Para altrec<-1 Hasta ALTURA Hacer
			Para basrec <-1 Hasta base Hacer
				Escribir simbolo sin saltar ;
			
		Fin Para
		Escribir "";
		Fin Para
	FinSi
	SI OPCION=2 Entonces
		Escribir "CUADRADO";
		Escribir "ESCRIBE EL SIMBOLO CON EL QUE SE IMPRIMA LA FIGURA";
		LEER simbolo;
		Escribir " ESCRIBE LA ALTURA ";
		LEER ALTURA;
		Escribir " ESCIBE LA BASE ";
		LEER base;
		Para altrec<-1 Hasta ALTURA Hacer
			Para basrec<-1 Hasta base Hacer
				Escribir simbolo Sin Saltar;
			Fin Para
			Escribir "";
		Fin Para

		
	FinSi
	SI OPCION=3 Entonces
		Escribir "TRIANGULO"
		Escribir "ESCRIBE EL SIMBOLO CON EL QUE QUIERES QUE SE IMPRIMA LA FIGURA ";
		leer simbolo;
		Escribir "ESCRIBE LA ALTURA DEL TRIANGULO";
		Leer ALTURA;
		Escribir "ESCRIBE LA BASE DEL TRIANGULO ";
		LEER base;
		Para altrec<-0 Hasta ALTURA  hacer
			Para basrec<-0 Hasta (ALTURA - altrec) Con Paso 1 Hacer
				Escribir sin saltar simbolo;
			Fin Para
			Escribir "";
		Fin Para
	FinSi
	
FinAlgoritmo
