//Autor:Jos� Andr�s Gutierrez Vargas
//Descripci�n: 

SubProceso opcion <- menu //Este subproceso sirve para arrojar un valor dado seg�n la opci�n elegida, tambi�n da el men�
	Definir opcion Como Entero;
	Escribir "Bienvenido a los programas";
	Escribir "________________________________________________";
	Escribir "[1] Saludar diez veces";
	Escribir "[2] Calificaciones en cadena";
	Escribir "[3] Sembrando zanahorias con Mientras";
	Escribir "[4] Cuenta regresiva";
	Escribir "[5] Boleto de Loter�a";
	Escribir "[6] Correo Electr�nico v�lido";
	Escribir "[7] Todav�a No";
	Escribir "[0] Salir";
	Escribir "________________________________________________";
	Escribir "";
	Escribir Sin Saltar "Elige tu programa a ejecutar";
	Leer opcion;
FinSubProceso

Proceso Menu_Mientras
	//Primero definimos una variable_numerica para la opci�n arrojada por el menu
	Definir opcion1 Como Entero;
	//Luego definiremos las variables de todos los c�digos para evitar los errores
	//Variables de la opci�n 1
	Definir i Como Entero;
	//Variables de la opci�n 2
	Definir caden Como Texto;
	Definir calif,clave,parte Como Caracter;
	Definir constant,seccion,iniciador,contador,suma Como Entero;
	//Variables de la opci�n 3
	Definir cantihort,div,sobr,c1,c2,plantada,filas Como Entero;
	Definir distintor Como Real;
	//Variables de la opci�n 4
	Definir dato Como Entero;
	//Variables de la opci�n 5
	Definir numboleto,intentos,sacado Como Entero;
	//Variables de la opci�n 6
	Definir correo,s,com Como Caracter;
	Definir longi,seleccionador,arroba Como Entero;
	//Variables de la opci�n 7
	Definir numerone,numertwo,limite Como Entero;
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
				Escribir "Saludar diez veces";
				Escribir "________________________________________________";
				i<-1;
				Mientras i<=10 Hacer
					Escribir i,".- �Hola A Todos!  :D";
					i<-i+1;
				FinMientras
				
			2:
				Escribir "Calificaciones en cadena";
				Escribir "________________________________________________";
				caden<-"01=9.1|02=5.4|03=9.3|04=8.0|05=8.3|06=5.1|07=9.9|08=5.6|09=8.8|10=7.5|";
				contador<-1;
				suma<-Longitud(caden);
				constant<-6;
				iniciador<-0;
				Mientras contador<=10 Hacer
					seccion<-(constant+1)*contador;
					parte<-Subcadena(caden,iniciador,(seccion-1));
					clave<-Subcadena(parte,0,1);
					calif<-Subcadena(parte,3,5);
					Escribir "La clave ",clave," tiene la calificaci�n ",calif;
					iniciador<-seccion;
					contador<-contador+1;
				FinMientras
			3:
				Escribir "Sembrando zanahorias con Mientras";
				Escribir "________________________________________________";
				Escribir "Ingresa la cantidad de hortalizas a plantar";
				Leer cantihort;
				filas<-0;
				div<-trunc(cantihort/10);
				filas<-div;
				sobr<-cantihort mod 10;
				Si sobr>0 Entonces
					filas<-filas+1;
				FinSi
				plantada<-1;
				c1<-1;
				c2<-0;
				Mientras c1<=filas y plantada<=cantihort Hacer
					distintor<-plantada mod 2;
					Si distintor<>0 o plantada=1 Entonces
						Escribir Sin Saltar " * ";
						plantada<-plantada+1;
					SiNo
						Escribir Sin Saltar " & ";
						plantada<-plantada+1;
					FinSi
					c2<-c2+1;
					Si c2=10 Entonces
						Escribir "";
						c2<-0;
						c1<-c1+1;
					FinSi
				FinMientras
				Escribir "";
				Escribir "";
			4:
				Escribir "Cuenta regresiva";
				Escribir "________________________________________________";
				Escribir "Ingrese el n�mero con el cual iniciar su cuenta regresiva";
				Leer dato;
				contador<-dato;
				Mientras contador<>0 Hacer
					Escribir "Ingrese el n�mero con el cual iniciar su cuenta regresiva";
					Escribir "";
					Escribir "Cuenta regresiva:",contador;
					contador<-contador-1;
					Esperar 1 Segundos;
					Borrar Pantalla;
				FinMientras
			5:
				Escribir "Boleto de Loter�a";
				Escribir "________________________________________________";
				Escribir "Ingrese su boleto de la suerte";
				Leer numboleto;
				intentos<-0;
				sacado<-0;
				Mientras numboleto<>sacado Hacer
					sacado<-azar(101);
					intentos<-intentos+1;
				FinMientras
				Si intentos<=100 Entonces
					Escribir "El boleto ",numboleto,"� tiene la probabilidad de salir a los ",intentos," intentos.";
				SiNo
					Escribir "El boleto ",numboleto,"� tiene la probabilidad de no salir en 100 intentos ";
				FinSi
				Escribir "";
			6:
				Escribir "Correo Electr�nico v�lido";
				Escribir "________________________________________________";
				Escribir "Ingresa correo electr�nico";
				Leer correo;
				longi<-Longitud(correo);
				seleccionador<-0;
				arroba<-0;
				contador<-0;
				com<-Subcadena(correo,(longi-4),longi);
				Mientras seleccionador<>longi Hacer
					s<-Subcadena(correo,seleccionador,seleccionador);
					Si s="A" o s="B" o s="C" o s="D" o s="E" o s="F" o s="G" o s="H" o s="I" o s="J" o s="K" o s="L" o s="M" o s="N" o s="�" o s="O" o s="P" o s="Q" o s="R" o s="S" o s="T" o s="U" o s="V" o s="W" o s="X" o s="Y" o s="Z" Entonces
						contador<-contador+1;
					SiNo
						Si s="a" o s="b" o s="c" o s="d" o s="e" o s="f" o s="g" o s="h" o s="i" o s="j" o s="k" o s="l" o s="m" o s="n" o s="�" o s="o" o s="p" o s="q" o s="r" o s="s" o s="t" o s="u" o s="v" o s="w" o s="x" o s="y" o s="z" Entonces
							contador<-contador+1;
						SiNo
							Si s="0" o s="1" o s="2" o s="3" o s="4" o s="5" o s="6" o s="7" o s="8" o s="9" Entonces
								contador<-contador+1;
							SiNo
								Si s="." o s="@" Entonces
									contador<-contador+1;
								SiNo
									contador<-contador-1;
								FinSi
							FinSi
						FinSi
					FinSi
					Si s="@" Entonces
						arroba<-arroba+1;
					FinSi
					seleccionador<-seleccionador+1;
				FinMientras
				Si arroba=1 y com=".com" y contador=longi Entonces
					Escribir "El correo electr�nico es v�lido.";
				SiNo
					Escribir "El correo electr�nico es inv�lido.";
				FinSi
			7:
				Escribir "Todav�a No";
				Escribir "________________________________________________";
				Escribir Sin Saltar "Ingrese el primer n�mero:";
				Leer numerone;
				Escribir Sin Saltar "Ingrese el segundo n�mero:";
				Leer numertwo;
				limite<-0;
				Si numerone<>numertwo Entonces
					limite<-limite+1;
				FinSi
				Si (((numertwo mod 2)=0)y((numerone mod 2)=0)) Entonces
				FinSi
				Mientras ((((numertwo mod 2)=0)y((numerone mod 2)=0)) o (((numerone mod 2)<>0)y((numertwo mod 2)<>0))) y ((numerone<=1000)y(numertwo<=1000)) Hacer
					Escribir "Todav�a no";
					Escribir Sin Saltar "Ingrese el primer n�mero:";
					Leer numerone;
					Escribir Sin Saltar "Ingrese el segundo n�mero:";
					Leer numertwo;
				FinMientras
				Escribir "Ya";
				Escribir "";
		FinSegun
		Esperar 5 Segundos;
		//El esperar har� que se ejecute el programa y se den los resultados apareciendo un 
		//determinado numero de tiempo en pantalla antes de borrarse, y volver a arrojar el men�
	Hasta Que opcion1=0
	Escribir "Hasta la proxima";
FinProceso