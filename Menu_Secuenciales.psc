//Autor:José Andrés Gutierrez Vargas
//Descripción: 

SubProceso opcion <- menu //Este subproceso sirve para arrojar un valor dado según la opción elegida, también da el menú
	Definir opcion Como Entero;
	Escribir "Bienvenido a los programas";
	Escribir "________________________________________________";
	Escribir "[1] Cambio de divisa";
	Escribir "[2] Valor absoluto";
	Escribir "[3] Frecuencia cardiaca máxima";
	Escribir "[4] Incremento salarial";
	Escribir "[5] Doblar número y multiplicar por 25";
	Escribir "[6] Raíces de ecuación cuadrática";
	Escribir "[7] Presupuesto de hospital";
	Escribir "[8] Ganancia de artículo";
	Escribir "[9] Cálculo de hipotenusa";
	Escribir "[10] Índice de masa corporal";
	Escribir "[0] Salir";
	Escribir "________________________________________________";
	Escribir "";
	Escribir Sin Saltar "Elige tu programa a ejecutar";
	Leer opcion;
FinSubProceso

Proceso Menu_Secuenciales
	//Primero definimos una variable_numerica para la opción arrojada por el menu
	Definir opcion1 Como Entero;
	//Luego definiremos las variables de todos los códigos para evitar los errores
	//Variables de la opción 1
	Definir cantidad,mitad,dolar,euro Como Real;
	//Variables de la opción 2
	Definir VALO COMO REAL;
	//Variables de la opción 3
	Definir latidos,edad como real;
	//Variables de la opción 4
	definir incremento como entero;
	definir salario como real;
	//Variables de la opción 5
	Definir nume ,resultado, resultado2 como real;
	//Variables de la opción 6
	Definir a,b,c,x1,x2 Como Real;
	//Variables de la opción 7
	Definir presupuesto Como Real;
	//Variables de la opción 8
	definir precio,costo, costo_consumidor Como Real;
	//Variables de la opción 9
	Definir hipotenusa Como Real;
	//Variables de la opción 10
	definir imc,altura,peso Como Real;
	//El repetir hará que se traiga al menú el número indefinido de veces hasta que sea el valor 0 el elegido en opción
	Repetir
		//Los siguientes lineas son mera estética del programa
		Limpiar Pantalla;
		opcion1<-menu ();
		Escribir "";
		Escribir "________________________________________________";
		Escribir "Procesando";
		Escribir "________________________________________________";
		
		//En el según guardaremos los codigos y según la opción dada será el código a ejecutar
		Segun opcion1 Hacer
			1:
				Escribir "Cambio de divisa";
				Escribir "________________________________________________";
				Escribir "Ingresa cantidad de pesos";
				Leer cantidad;
				mitad<-cantidad/2;
				dolar<-mitad/17.85;
				euro<-mitad/18.90;
				Escribir "El presupuesto de viaje es: $",cantidad,", tu presupuesto por viaje es de: $",mitad,". Tu presupuesto para viaje uno en dolares es: $",dolar,", y tu presupuesto en euros es: £",euro;
			2:
				Escribir "Valor absoluto";
				Escribir "________________________________________________";
				ESCRIBIR "INGRESA LA SIFRA";
				LEER VALO;
				Escribir "VALOR APSOLUTO ", ABS(VALO);
			3:
				Escribir "Frecuencia cardiaca máxima";
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
				Escribir "Doblar número y multiplicar por 25";
				Escribir "________________________________________________";
				Escribir "INGRESA EL NUMERO QUE QUIERES DOBLAR";
				Leer nume;
				resultado<-nume*2;
				resultado2<-resultado*25;
				Escribir "EL VALOR DOBLADO ES: ",resultado ," Y MULTIPLICADO POR 25 ES: ",resultado2;
			6:
				Escribir "Raíces de ecuación cuadrática";
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
				escribir "Ginecología 40%";
				Escribir "----------------------";
				Escribir "Traumatología 30%";
				Escribir "----------------------";
				Escribir "Pediatría 30%";
				Escribir "----------------------";
				Escribir "Ingresa el presupuesto";
				Leer presupuesto;
				Escribir "Ginecología: $",presupuesto*0.40;
				Escribir "Traumatología: $",presupuesto*0.30;
				Escribir "Pediatría: $",presupuesto*0.30;
			8:
				Escribir "Ganancia de artículo";
				Escribir "________________________________________________";
				escribir "INGRESA EL PRECIO DEL ARTICULO AL QUE LE QUIERES AUMENTAR EL 30%";
				Leer precio;
				costo<-precio*0.30;
				costo_consumidor<-costo+precio;
				Escribir "EL PRECIODEL ARTICULO DE PROVEDOR ES DE: $",precio;
				Escribir "LA GANANCIA DEL PRODUCTO ES DE: $", costo;
				Escribir "EL PRECIO DEL PRODUCTO PARA CONSUMIDOR ES DE: $",costo_consumidor;
			9:
				Escribir "Cálculo de hipotenusa";
				Escribir "________________________________________________";
				Escribir "Ingresa cateto A";
				Leer a;
				Escribir "Ingresa cateto B";
				Leer b;
				hipotenusa<-raiz(a^2+b^2);
				Escribir"Dato cateto A= ",a," y el cateto B= ",b," el cateto de la hipotenusa es ",hipotenusa;
			10:
				Escribir "Índice de masa corporal";
				Escribir "________________________________________________";
				Escribir "ingresa tu peso";
				Leer peso;
				Escribir "ingresa tu altura";
				Leer altura;
				imc<-peso/(altura^2);
				Escribir " TU INDISE DE MASA CORPORAL (IMC) ES: ",IMC;
			De Otro Modo:
				Escribir "No es una opción que tengamos, intentelo nuevamente";
		FinSegun
		Esperar 5 Segundos;
		//El esperar hará que se ejecute el programa y se den los resultados apareciendo un 
		//determinado numero de tiempo en pantalla antes de borrarse, y volver a arrojar el menú
	Hasta Que opcion1=0
	Escribir "Hasta la proxima";
FinProceso

