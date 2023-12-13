//Autor:Jos� Andr�s Gutierrez Vargas
//Descripci�n: 

SubProceso opcion <- menu //Este subproceso sirve para arrojar un valor dado seg�n la opci�n elegida, tambi�n da el men�
	Definir opcion Como Entero;
	Escribir "Bienvenido a los programas";
	Escribir "________________________________________________";
	Escribir "[1] Cambio de divisa";
	Escribir "[2] Valor absoluto";
	Escribir "[3] Frecuencia cardiaca m�xima";
	Escribir "[4] Incremento salarial";
	Escribir "[5] Doblar n�mero y multiplicar por 25";
	Escribir "[6] Ra�ces de ecuaci�n cuadr�tica";
	Escribir "[7] Presupuesto de hospital";
	Escribir "[8] Ganancia de art�culo";
	Escribir "[9] C�lculo de hipotenusa";
	Escribir "[10] �ndice de masa corporal";
	Escribir "[0] Salir";
	Escribir "________________________________________________";
	Escribir "";
	Escribir Sin Saltar "Elige tu programa a ejecutar";
	Leer opcion;
FinSubProceso

Proceso Menu_Secuenciales
	//Primero definimos una variable_numerica para la opci�n arrojada por el menu
	Definir opcion1 Como Entero;
	//Luego definiremos las variables de todos los c�digos para evitar los errores
	//Variables de la opci�n 1
	Definir cantidad,mitad,dolar,euro Como Real;
	//Variables de la opci�n 2
	Definir VALO COMO REAL;
	//Variables de la opci�n 3
	Definir latidos,edad como real;
	//Variables de la opci�n 4
	definir incremento como entero;
	definir salario como real;
	//Variables de la opci�n 5
	Definir nume ,resultado, resultado2 como real;
	//Variables de la opci�n 6
	Definir a,b,c,x1,x2 Como Real;
	//Variables de la opci�n 7
	Definir presupuesto Como Real;
	//Variables de la opci�n 8
	definir precio,costo, costo_consumidor Como Real;
	//Variables de la opci�n 9
	Definir hipotenusa Como Real;
	//Variables de la opci�n 10
	definir imc,altura,peso Como Real;
	//El repetir har� que se traiga al men� el n�mero indefinido de veces hasta que sea el valor 0 el elegido en opci�n
	Repetir
		//Los siguientes lineas son mera est�tica del programa
		Limpiar Pantalla;
		opcion1<-menu ();
		Escribir "";
		Escribir "________________________________________________";
		Escribir "Procesando";
		Escribir "________________________________________________";
		
		//En el seg�n guardaremos los codigos y seg�n la opci�n dada ser� el c�digo a ejecutar
		Segun opcion1 Hacer
			1:
				Escribir "Cambio de divisa";
				Escribir "________________________________________________";
				Escribir "Ingresa cantidad de pesos";
				Leer cantidad;
				mitad<-cantidad/2;
				dolar<-mitad/17.85;
				euro<-mitad/18.90;
				Escribir "El presupuesto de viaje es: $",cantidad,", tu presupuesto por viaje es de: $",mitad,". Tu presupuesto para viaje uno en dolares es: $",dolar,", y tu presupuesto en euros es: �",euro;
			2:
				Escribir "Valor absoluto";
				Escribir "________________________________________________";
				ESCRIBIR "INGRESA LA SIFRA";
				LEER VALO;
				Escribir "VALOR APSOLUTO ", ABS(VALO);
			3:
				Escribir "Frecuencia cardiaca m�xima";
				Escribir "________________________________________________";
				Escribir "INGRESA TU EDAD ";
				Leer edad;
				latidos<-220-edad;
				Escribir "TUS LATIDOS SON DE ",latidos , " LPM";
			4:
				Escribir "Incremento salarial";
				Escribir "________________________________________________";
				Escribir "ingresa el salario actual:";
				Leer salario;
				incremento<-salario*.25+salario;
				escribir "El salario con el incremento del 25% es de: " ,incremento;
			5:
				Escribir "Doblar n�mero y multiplicar por 25";
				Escribir "________________________________________________";
				Escribir "INGRESA EL NUMERO QUE QUIERES DOBLAR";
				Leer nume;
				resultado<-nume*2;
				resultado2<-resultado*25;
				Escribir "EL VALOR DOBLADO ES: ",resultado ," Y MULTIPLICADO POR 25 ES: ",resultado2;
			6:
				Escribir "Ra�ces de ecuaci�n cuadr�tica";
				Escribir "________________________________________________";
				Escribir "Ingresa valores A";
				Leer a;
				Escribir "Ingresa valores B";
				Leer b;
				Escribir "Ingresa valores C";
				Leer c;
				x1<-(-b+raiz(b^2-4*a*c))/(2*a);
				x2<-(-b-raiz(b^2-4*a*c))/(2*a);
				Escribir "x1= ",x1,"  x2= ",x2;
			7:
				Escribir "Presupuesto de hospital";
				Escribir "________________________________________________";
				Escribir "PRESUPUESTO DEL HOSPITAL";
				Escribir "----------------------";
				escribir "Ginecolog�a 40%";
				Escribir "----------------------";
				Escribir "Traumatolog�a 30%";
				Escribir "----------------------";
				Escribir "Pediatr�a 30%";
				Escribir "----------------------";
				Escribir "Ingresa el presupuesto";
				Leer presupuesto;
				Escribir "Ginecolog�a: $",presupuesto*0.40;
				Escribir "Traumatolog�a: $",presupuesto*0.30;
				Escribir "Pediatr�a: $",presupuesto*0.30;
			8:
				Escribir "Ganancia de art�culo";
				Escribir "________________________________________________";
				escribir "INGRESA EL PRECIO DEL ARTICULO AL QUE LE QUIERES AUMENTAR EL 30%";
				Leer precio;
				costo<-precio*0.30;
				costo_consumidor<-costo+precio;
				Escribir "EL PRECIODEL ARTICULO DE PROVEDOR ES DE: $",precio;
				Escribir "LA GANANCIA DEL PRODUCTO ES DE: $", costo;
				Escribir "EL PRECIO DEL PRODUCTO PARA CONSUMIDOR ES DE: $",costo_consumidor;
			9:
				Escribir "C�lculo de hipotenusa";
				Escribir "________________________________________________";
				Escribir "Ingresa cateto A";
				Leer a;
				Escribir "Ingresa cateto B";
				Leer b;
				hipotenusa<-raiz(a^2+b^2);
				Escribir"Dato cateto A= ",a," y el cateto B= ",b," el cateto de la hipotenusa es ",hipotenusa;
			10:
				Escribir "�ndice de masa corporal";
				Escribir "________________________________________________";
				Escribir "ingresa tu peso";
				Leer peso;
				Escribir "ingresa tu altura";
				Leer altura;
				imc<-peso/(altura^2);
				Escribir " TU INDISE DE MASA CORPORAL (IMC) ES: ",IMC;
			De Otro Modo:
				Escribir "No es una opci�n que tengamos, intentelo nuevamente";
		FinSegun
		Esperar 5 Segundos;
		//El esperar har� que se ejecute el programa y se den los resultados apareciendo un 
		//determinado numero de tiempo en pantalla antes de borrarse, y volver a arrojar el men�
	Hasta Que opcion1=0
	Escribir "Hasta la proxima";
FinProceso

