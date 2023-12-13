//Autor: Jos� Andr�s Gutierrez Vargas
//Descripci�n:Algoritmo que saca un men� de otros algoritmos y los ejecuta seg�n el menu y la opci�n elegida

SubProceso opcion <- menu //Este subproceso sirve para arrojar un valor dado seg�n la opci�n elegida, tambi�n da el men�
	Definir opcion Como Entero;
	Escribir "Bienvenido a los programas";
	Escribir "________________________________________________";
	Escribir "[1] Contando los enteros de la l�nea";
	Escribir "[2] El asalto en Macusani";
	Escribir "[3] Suma de fracciones simple";
	Escribir "[4] Producto punto sin arreglos";
	Escribir "[5] Formulota";
	Escribir "[6] ";
	Escribir "[7] ";
	Escribir "[8] Invertir los d�gitos";
	Escribir "[9] Es cuadrado";
	Escribir "[10] �Cu�ntos?";
	Escribir "[11] Repartir par";
	Escribir "[12] Roberto y el pago de peaje";
	Escribir "[13] Ayudando a la ciencia";
	Escribir "[14] Fechas A";
	Escribir "[15] Encriptando el mensaje";
	Escribir "[0] Salir";
	Escribir "________________________________________________";
	Escribir "";
	Escribir Sin Saltar "Elige tu programa a ejecutar";
	Leer opcion;
FinSubProceso

//A continuaci�n sigue el Algoritmo que dar� los programas solicidados para su ejecuci�n.
Algoritmo Menu_OmegaUp_Code
	Definir opcion1 Como Entero;
	//Primero definimos una variable_numerica para la opci�n arrojada por el menu
	//Luego definiremos las variables de todos los c�digos para evitar los errores
	
	//Variables de la opci�n 1
	Definir lineanumer,caracnum,conjunto Como Caracter;
	Definir numerosdados,suma,long1,long2,longcn,numdecaract,conteo,longini Como Entero;
	//Variables de la opci�n 2
	Definir numcaja,numer,sumcode Como Entero;
	//Variables de la opci�n 3
	Definir num1,num2,num3,num4,arriba,abajo Como Entero;
	//Variables de la opci�n 4
	Definir vectores,b,resultsm Como Entero;
	//Variables de la opci�n 5
	Definir x,w,z,oper1,oper2,oper3,salida,salidaredon,decimales Como Real;
	Definir decimsalida Como Caracter;
	//Variables de la opci�n 6
	
	//Variables de la opci�n 7
	
	//Variables de la opci�n 8
	Definir numera,numri,numinv Como Caracter;
	Definir conta,longitni,invertido,ingresado,sumaii Como Entero;
	//Variables de la opci�n 9
	Definir numing Como Entero;
	Definir eval,rai Como Real;
	//Variables de la opci�n 10
	Definir n,p,q,numdemul Como Entero;
	//Variables de la opci�n 11
	Definir nh,nm,pares Como Entero;
	//Variables de la opci�n 12
	Definir valorcaseta,descuento,sumacaseta Como Real;
	Definir caseta Como Entero;
	Definir pagos Como Caracter;
	//Variables de la opci�n 13
	Definir celsius,fahrenheit,kelvin,operaconAC Como Real;
	//Variables de la opci�n 14
	Definir d,m,a,ddm Como Entero;
	//Variables de la opci�n 15
	Definir palabra1,palabra2,encriptado,letra1,letra2 Como Cadena;
	Definir numletra,exten1,exten2,letras Como Entero;
	
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
				Escribir "Contando los enteros de la l�nea";
				Escribir "________________________________________________";
				Escribir "Este algoritmo cuenta cuantos n�meros hay en una l�nea y los suma";
				Escribir "";
				Escribir "Ingresa los valores que quieras evaluar separando por espacios y saltando de l�nea cuando ya no desee ingresar m�s";
				Leer lineanumer;
				lineanumer<-Concatenar(lineanumer," ");
				long1<-Longitud(lineanumer);
				conjunto<-"";
				caracnum<-"";
				numdecaract<-0;
				suma<-0;
				long2<-0;
				longini<-long1;
				conteo<-0;
				Mientras long2<>longini Hacer
					conjunto<-"";
					caracnum<-"";
					numdecaract<-0;
					Repetir
						conjunto<-Concatenar(conjunto,caracnum);
						caracnum<-Subcadena(lineanumer,numdecaract,numdecaract);
						numdecaract<-numdecaract+1;
						long2<-long2+1;
					Hasta Que caracnum=" ";
					numerosdados<-ConvertirANumero(conjunto);
					longcn<-Longitud(conjunto);
					lineanumer<-Subcadena(lineanumer,(longcn+1),long1);
					long1<-Longitud(lineanumer);
					suma<-suma+numerosdados;
					conteo<-conteo+1;
				Fin Mientras
				Escribir conteo," ",suma;
			2:
				Escribir "El asalto en Macusani";
				Escribir "________________________________________________";
				Escribir "Este valor le da la suma de los valores que hay de 0 hasta el numero ingresado a nos ladrones para encontar un c�digo";
				Escribir "";
				Escribir "Bienvenidos";
				Escribir "�Cu�l es el n�mero junto a la caja fuerte?";
				Leer numcaja;
				sumcode<-0; 
				Si numcaja>=2 y numcaja<=10000 Entonces
					
					Para numer<-0 Hasta numcaja Con Paso 1 Hacer
						sumcode<-sumcode+numer;
					Fin Para
					Escribir sumcode;
				SiNo 
					Si numcaja=1 Entonces
						Escribir "Ya tienen la respuesta";
					SiNo
						Escribir "Ese n�mero excede mis capacidades";
					Fin Si
				Fin Si
			3:
				Escribir "Suma de fracciones simple";
				Escribir "________________________________________________";
				Escribir "Este algoritmo nos da el resultado de una suma de dos fracciones simples";
				Escribir "";
				Escribir "Ingresa los las fracciones a evaluar";
				Leer num1;
				Leer num2;
				Leer num3;
				Leer num4;
				Si (num1<=20 y num1>=1) y (num2<=20 y num2>=1) y (num3<=20 y num3>=1) y (num4<=20 y num4>=1) Entonces
					arriba<-(num1*num4)+(num2*num3);
					abajo<-num2*num4;
					Escribir arriba,"/",abajo;
				SiNo
					Escribir "Alguno de los valores no esta dentro del rango permitido";
				Fin Si
			4:
				Escribir "Producto punto sin arreglos";
				Escribir "________________________________________________";
				Escribir "Este algoritmo multiplica numeros por posici�n en vectores y suma los resultados";
				Escribir "";
				Escribir "Ingrese el valor de longitud de los vectores";
				Leer vectores;
				suma<-0;
				conteo<-0;
				Si vectores<=10 y vectores>=1 Entonces
					Escribir "Ingrese los valores intercalados de los vectores";
					Repetir
						Leer a;
						Leer b;
						suma<-suma+(a*b);
						conteo<-conteo+1;
					Hasta Que conteo=vectores
					Escribir suma;
				SiNo
					Escribir "El valor de longitud ingresado esta fuera del rango permitido";
				Fin Si
			5:
				Escribir "Formulota";
				Escribir "________________________________________________";
				Escribir "Este algoritmo ayuda a evaluar tres valores siguiendo una formula";
				Escribir "";
				Escribir "Bienvenido";
				Escribir "Ingrese sus variables x,y,z en ese orden a continuaci�n";
				Leer x,w,z;
				Si (x<=100 y x>=(-100)) y (w<=100 y w>=(-100)) y (z<=100 y z>=(-100)) Entonces
					oper1<-(x+w)/(2*x);
					oper2<-((x^3)+(w^3))/((x^2)+(w^2));
					oper3<-(x^2)+(w^2)+(z^2);
					salida<-(oper1+oper2)/oper3;
					salidaredon<-trunc(salida); 
					decimales<-(salida-salidaredon);
					decimales<-decimales*(10^6);
					decimales<-trunc(decimales);
					decimsalida<-ConvertirATexto(decimales);
					Si Longitud(decimsalida)<6 Entonces 
						Repetir
							decimsalida<-Concatenar("0",decimsalida);
						Hasta Que Longitud(decimsalida)=6
					FinSi
					Escribir salidaredon,".",decimsalida;
				SiNo
					Escribir "Alguno de los valores esta fuera del rango";
				Fin Si
			6:
				
			7:
				
			8:
				Escribir "Invertir los d�gitos";
				Escribir "________________________________________________";
				Escribir "Este algoritmo invierte todos los d�gitos en un n�mero, volviendolo un nuevo n�mero y los suma";
				Escribir "";
				Escribir "Ingresa el n�mero";
				Leer numera;
				longitni<-Longitud(numera);
				numinv<-"";
				Para conta<-longitni Hasta 0 Con Paso (-1) Hacer
					numri<-Subcadena(numera,conta,conta);
					numinv<-Concatenar(numinv,numri);
				FinPara
				ingresado<-ConvertirANumero(numera);
				invertido<-ConvertirANumero(numinv);
				sumaii<-ingresado+invertido;
				Escribir sumaii;
			9:
				Escribir "Es cuadrado";
				Escribir "________________________________________________";
				Escribir "Este algoritmo nos ayuda a saber si un n�mero es o no cuadrado de otro";
				Escribir "";
				Escribir "Ingrese el n�mero para saber si es cuadrado";
				Leer numing;
				Si numing>0 Entonces
					rai<-raiz(numing);
					eval<-rai-trunc(rai);
					Escribir "�Es cuadrado?";
					Si eval=0 Entonces
						Escribir "Si ",rai;
					SiNo
						Escribir "No";
					FinSi
				SiNo
					Escribir "El valor no puede ser evaluado, es negativo";
				FinSi
			10:
				Escribir "�Cu�ntos?";
				Escribir "________________________________________________";
				Escribir "El siguiente algoritmo cuenta los multiplos de n que hay en un rango [p,q]";
				Escribir "";
				Escribir "Ingrese a continuaci�n lo que se le pide en el siguiente orden:";
				Escribir "n = N�mero del cual quiere conocer la cantidad de m�ltiplos";
				Escribir "p = N�mero inicial del rango a buscar (p<q)";
				Escribir "q = N�mero final del rango a buscar (q>p)";
				Leer n,p,q;
				Si p<q Entonces
					numdemul<-0;
					Para conteo<-p Hasta q Con Paso 1 Hacer
						Si (conteo mod n)=0 Entonces
							numdemul<-numdemul*1;
						FinSi
					FinPara
					Escribir numdemul;
				SiNo
					Escribir "No se ha respetado la condici�n p<q";
				FinSi
			11:
				Escribir "Repartir par";
				Escribir "________________________________________________";
				Escribir "El argoritmo verifica que si dado un n�mero m de manzanas y h de hermanas se les puee repartir a h  una cantidad par igual de manzanas sin importar si sobran";
				Escribir "";
				Escribir "Ingrese el n�mero de manzanas y de hermanas que se tienen en ese orden";
				Leer nm;
				Leer nh;
				Si (nh>=1 y nh<=50) y (nm>=1 y nm<=100) Entonces
					pares<-trunc(nm/nh);
					Si (pares mod 2)=0 y pares<>0 Entonces
						Escribir pares;
					SiNo
						Escribir "No";
					FinSi
				SiNo
					Escribir "Alguno de los valores est� fuera del rango permitido";
				FinSi
			12:
				Escribir "Roberto y el pago de peaje";
				Escribir "________________________________________________";
				Escribir "En este algoritmo se evalua el descuento aplicado a un valor inicial de decuentos por cada caseta transitada";
				Escribir "";
				Escribir "Ingrese el valor de la primera caseta";
				Leer valorcaseta;
				pagos<-ConvertirATexto(valorcaseta); 
				sumacaseta<-0;
				Para caseta<-1 Hasta 4 Con Paso 1 Hacer
					descuento<-valorcaseta*(45/1000);
					valorcaseta<-valorcaseta-descuento;
					sumacaseta<-sumacaseta+valorcaseta;
					pagos<-Concatenar(pagos,", ");
					pagos<-Concatenar(pagos,ConvertirATexto(valorcaseta));
				FinPara
				Escribir sumacaseta;
				Escribir pagos;
			13:
				Escribir "Ayudando a la ciencia";
				Escribir "________________________________________________";
				Escribir "El siguiente algoritmo evalua una cantidad de grados celsius, la trasforma en fahrenheit y luego a kelvin para poder operar una formula";
				Escribir "";
				Definir celsius,fahrenheit,kelvin,operaconAC Como Real;
				Escribir "Ingrese el valor en grados celsius";
				Leer celsius;
				fahrenheit<-(celsius*1.8)+32;
				kelvin<-celsius+273.15;
				operaconAC<-5*(1.5*((fahrenheit/2)+(kelvin/4)));
				Escribir fahrenheit,"   ",kelvin,"   ",operaconAC;
			14:
				Escribir "Fechas A";
				Escribir "________________________________________________";
				Escribir "Este algoritmo nos da el d�a posterior a una fecha ingresada";
				Escribir "";
				Escribir "Ingrese a continuaci�n la fecha en la forma dd/mm/aa";
				Leer d,m,a;
				Si (a mod 4)=0 Entonces 
					Si m=1 o m=3 o m=5 o m=7 o m=8 o m=10 o m=12 Entonces //Para meses de 31 d�as
						ddm<-1;
					FinSi
					Si m=4 o m=6 o m=9 o m=11 Entonces
						ddm<-2;
					FinSi
					Si m=2 Entonces 
						ddm<-3;
					FinSi
					Segun ddm Hacer
						1:
							d<-d+1; 
							Si d>32 Entonces
								Escribir "El d�a ingresado no es un valor v�lido";
							SiNo 
								Si d>31 Entonces 
									m<-m+1;
									d<-1;
								FinSi
								Si m>12 Entonces 
									a<-a+1;
									m<-1;
								FinSi
							FinSi
						2:
							d<-d+1; 
							Si d>31 Entonces
								Escribir "El d�a ingresado no es un valor v�lido";
							SiNo
								Si d>30 Entonces 
									m<-m+1;
									d<-1;
								FinSi
							FinSi
						3:
							d<-d+1; 
							Si d>30 Entonces
								Escribir "El d�a ingresado no es un valor v�lido";
							SiNo 
								Si d>29 Entonces 
									m<-m+1;
									d<-1;
								FinSi
							FinSi
						De Otro Modo:
							Escribir "La fecha asignada en mes no corresponde a un valor posible";
					FinSegun
				SiNo 
					Si m=1 o m=3 o m=5 o m=7 o m=8 o m=10 o m=12 Entonces //Para meses de 31 d�as
						ddm<-1;
					FinSi
					Si m=4 o m=6 o m=9 o m=11 Entonces
						ddm<-2;
					FinSi
					Si m=2 Entonces 
						ddm<-3;
					FinSi
					Segun ddm Hacer
						1:
							d<-d+1; 
							Si d>32 Entonces
								Escribir "El d�a ingresado no es un valor v�lido";
							SiNo 
								Si d>31 Entonces 
									m<-m+1;
									d<-1;
								FinSi
								Si m>12 Entonces 
									a<-a+1;
									m<-1;
								FinSi
							FinSi
						2:
							d<-d+1; 
							Si d>31 Entonces
								Escribir "El d�a ingresado no es un valor v�lido";
							SiNo
								Si d>30 Entonces 
									m<-m+1;
									d<-1;
								FinSi
							FinSi
						3:
							d<-d+1; 
							Si d>29 Entonces
								Escribir "El d�a ingresado no es un valor v�lido";
							SiNo 
								Si d>28 Entonces 
									m<-m+1;
									d<-1;
								FinSi
							FinSi
						De Otro Modo:
							Escribir "La fecha asignada en mes no corresponde a un valor posible";
						FinSegun
					FinSi
				Escribir d,"/",m,"/",a;
			15:
				Escribir "Encriptando el mensaje";
				Escribir "________________________________________________";
				Escribir "Este algoritmo nos da un mensaje encriptado hecho en base a dos palbras de igual longitud a un esp�a";
				Escribir "";
				Escribir "Bienvenido Willy";
				Esperar 2 Segundos; 
				Escribir "Ingrese los mensajes a encriptar, recuerde que tienen que ser de igual extenci�n";
				Leer palabra1,palabra2;
				exten1<-Longitud(palabra1); 
				exten2<-Longitud(palabra2);
				numletra<-0;
				encriptado<-"";
				Si exten1=exten2 y (exten1<=1000 y exten2<=1000) Entonces
					letras<-exten1; 
					Para numletra<-0 Hasta letras Con Paso 1 Hacer
						letra1<-Subcadena(palabra1,numletra,numletra);
						letra2<-Subcadena(palabra2,numletra,numletra);
						encriptado<-Concatenar(encriptado,letra1);
						encriptado<-Concatenar(encriptado,letra2);
					Fin Para
					Escribir encriptado;
				SiNo
					Si exten1<>exten2 Entonces
						Escribir "Las palabras son de distinta extensi�n. No se puede ejecutar";
					FinSi
					Si (exten1<=1000 o exten2<=1000) o (exten1<=1000 y exten2<=1000) Entonces
						Escribir "La longitud de las variables rebasa el l�mite";
					FinSi
				Fin Si
				
			De Otro Modo:
				Escribir "No es una opci�n que tengamos, intentelo nuevamente";
		Fin Segun
		Esperar 5 Segundos;
		//El esperar har� que se ejecute el programa y se den los resultados apareciendo un determinado numero de tiempo en pantalla antes de borrarse, y volver a arrojar el men�
	Hasta Que opcion1=0
	
	Escribir "Hasta la proxima";
	
FinAlgoritmo
