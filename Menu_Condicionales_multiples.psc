//Autor:Jos� Andr�s Gutierrez Vargas
//Descripci�n: 

SubProceso opcion <- menu //Este subproceso sirve para arrojar un valor dado seg�n la opci�n elegida, tambi�n da el men�
	Definir opcion Como Entero;
	Escribir "Bienvenido a los programas";
	Escribir "________________________________________________";
	Escribir "[1] Sueldo de trabajador";
	Escribir "[2] Hospital en Crisis";
	Escribir "[3] Descripci�n d�a de la semana";
	Escribir "[4] Descripci�n del mes del a�o";
	Escribir "[5] N�meros Romanos";
	Escribir "[0] Salir";
	Escribir "________________________________________________";
	Escribir "";
	Escribir Sin Saltar "Elige tu programa a ejecutar";
	Leer opcion;
FinSubProceso

Proceso Menu_Condicionales_multiples
	//Primero definimos una variable_numerica para la opci�n arrojada por el menu
	Definir opcion1 Como Entero;
	//Luego definiremos las variables de todos los c�digos para evitar los errores
	//Variables de la opci�n 1
	Definir tipo,hijos,sueldo,aumento,prima Como Entero;
	Definir nombre Como Caracter;
	//Variables de la opci�n 2
	Definir  tipoenf,dias,costo Como Entero;
	Definir paciente Como Caracter;
	//Variables de la opci�n 3
	Definir diasem Como Entero;
	//Variables de la opci�n 4
	Definir mes Como Entero;
	//Variables de la opci�n 5
	Definir decenas,unidades,numerom Como Entero;
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
				Escribir "Sueldo de trabajador";
				Escribir "________________________________________________";
				Escribir "_____________________________________________";
				Escribir "       Tipo de trabajador";
				Escribir "       1 ------------ 10%";
				Escribir "       2 ------------ 15%";
				Escribir "       3 ------------ 20%";
				Escribir "       4 ------------ 30%";
				Escribir "       Prima 5%";
				Escribir "";
				Escribir "Prima es de acuerdo al n�mero de hijos [1,10]";
				Escribir "_____________________________________________";
				Escribir "";
				Escribir Sin Saltar "Ingresa tu nombre";
				Leer nombre;
				Escribir Sin Saltar "Ingresa el tipo de trabajador (1-4)";
				Leer tipo;
				Escribir Sin Saltar "Ingresa la cantidad de hijos que tienes";
				Leer hijos;
				Escribir Sin Saltar "Ingresa tu sueldo";
				Leer sueldo;
				Escribir "";
				Si tipo<=4 y tipo>=1 Entonces
					Segun tipo Hacer
						1:
							aumento<-sueldo*(10/100);
						2:
							aumento<-sueldo*(15/100);
						3:
							aumento<-sueldo*(20/100);
						4:
							aumento<-sueldo*(30/100);
					FinSegun
					prima<-(sueldo*(5/100));
					Escribir "";
					Escribir "Nombre del trabajador: ",Mayusculas(nombre);
					Escribir "El tipo de trabajador es ",tipo," aumento ",sueldo+aumento;
					Escribir "La prima de acuerdo al n�mero de hijos es ",hijos*prima;
					Escribir "El nuevo sueldo es ",sueldo+aumento+(hijos*prima);
				SiNo
					Escribir "Se a ingresado un tipo de trabajador no v�lido";
				FinSi
			2:
				Escribir "Hospital en Crisis";
				Escribir "________________________________________________";
				Escribir "__________________________________";
				Escribir "    Enfermedad a diagnosticar";
				Escribir "   Tipo 1 ------------ 1500.0";
				Escribir "   Tipo 2 ------------ 1700.0";
				Escribir "   Tipo 3 ------------ 1900.0";
				Escribir "__________________________________";
				Escribir "";
				Escribir Sin Saltar "Ingrese el nombre del paciente";
				Leer paciente;
				Escribir Sin Saltar "Ingrese el tipo de enfermedad";
				Leer tipoenf;
				Escribir Sin Saltar "Ingrese el n�mero de d�as";
				Leer dias;
				Escribir "";
				Si tipoenf>=1 y tipoenf<=3 Entonces
					Segun tipoenf Hacer
						1:
							costo<-dias*1500;
						2:
							costo<-dias*1700;
						3:
							costo<-dias*1900;
					FinSegun
					Escribir "Nombre del paciente: ",Mayusculas(paciente);
					Escribir "D�as hospitalizado: ",dias;
					Escribir "Tipo de enfermedad: ",tipoenf;
					Escribir "Costo total a pagar: ",costo;
				SiNo
					Escribir "El tipo de enfermedad ingresada no es correcta o esta fuera del catalogo";
				FinSi
			3:
				Escribir "Descripci�n d�a de la semana";
				Escribir "________________________________________________";
				Escribir "__________________________________";
				Escribir "		|   1   |     Domingo";
				Escribir "		|   2   |     Lunes";
				Escribir "		|   3   |     Martes";
				Escribir "		|   4   |     Miercoles";
				Escribir "		|   5   |     Jueves";
				Escribir "		|   6   |     Viernes";
				Escribir "		|   7   |     Sabado";
				Escribir "__________________________________";
				Escribir "";
				Escribir Sin Saltar "Ingresa el n�mero del d�a";
				Leer diasem;
				Segun diasem Hacer
					1:
						Escribir "DOMINGO D�A FELIZ Y DEL SOL";
					2:
						Escribir "LUNES D�A DE LA LUNA";
					3:
						Escribir "MARTES D�A DE MARTE";
					4:
						Escribir "MIERCOLES D�A DE MERCURIO";
					5:
						Escribir "JUEVES D�A DE JUPITER";
					6:
						Escribir "VIERNES D�A DE VENUS";
					7:
						Escribir "SABADO D�A DE SATURNO";
					De Otro Modo:
						Escribir "Dato no v�lido";
					FinSegun
			4:
				Escribir "Descripci�n del mes del a�o";
				Escribir "________________________________________________";
				Escribir "__________________________________";
				Escribir "		|   1   |     Enero";
				Escribir "		|   2   |     Febrero";
				Escribir "		|   3   |     Marzo";
				Escribir "		|   4   |     Abril";
				Escribir "		|   5   |     Mayo";
				Escribir "		|   6   |     Junio";
				Escribir "		|   7   |     julio";
				Escribir "		|   8   |     Agosto";
				Escribir "		|   9   |     Septiembre";
				Escribir "		|   10  |     Octubre";
				Escribir "		|   11  |     Noviembre";
				Escribir "		|   12  |     Diciembre";
				Escribir "__________________________________";
				Escribir "";
				Escribir Sin Saltar "Ingresa el n�mero del mes que deseas saber";
				Leer mes;
				Segun mes Hacer
					1:
						Escribir "Enero es el primer mes del a�o en el calendario gregoriano y tiene 31 d�as";
					2:
						Escribir "Febrero es el segundo mes del a�o en el calendario gregoriano. Tiene 28 d�as y 29 en los a�os bisiestos.";
					3:
						Escribir "Marzo es el tercer mes del a�o en el calendario gregoriano y tiene 31 d�as";
					4:
						Escribir "Abril es el cuarto mes del a�o y es uno de los cuatro meses que tienen 30 d�as";
					5:
						Escribir "Mayo es el quinto mes del a�o en el calendario gregoriano y tiene 31 d�as";
					6:
						Escribir "Junio es el sexto mes del a�o en el Calendario Gregoriano y tiene 30 d�as";
					7:
						Escribir "Julio es el s�ptimo mes del a�o en el calendario gregoriano y tiene 31 d�as";
					8:
						Escribir "Agosto es el octavo mes del a�o en el calendario gregoriano y tiene 31 d�as";
					9:
						Escribir "Septiembre es el noveno mes del a�o en el calendario gregoriano y tiene 30 d�as";
					10:
						Escribir "Octubre es el d�cimo mes del a�o en el calendario gregoriano y tiene 31 d�as.";
					11:
						Escribir "Noviembre es el und�cimo y pen�ltimo mes del a�o en el calendario gregoriano y tiene 30 d�as";
					12:
						Escribir "Diciembre es el duod�cimo y �ltimo mes del a�o en el calendario gregoriano y tiene 31 d�as";
					De Otro Modo:
						Escribir "Dato no v�lido";
					FinSegun
			5:
				Escribir "N�meros Romanos";
				Escribir "________________________________________________";
				Escribir "Dado un n�mero entre 1 y 100 se dar� su equivalente romano";
				Escribir Sin Saltar "Ingresa un n�mero del [1,100]";
				Leer numerom;
				
				Si numerom>=1 y numerom<=100 Entonces
					decenas<-trunc(numerom/10);
					unidades<-numerom mod 10;
					
					Segun decenas Hacer
						1:
							Escribir Sin Saltar "X";
						2:
							Escribir Sin Saltar "XX";
						3:
							Escribir Sin Saltar "XXX";
						4:
							Escribir Sin Saltar "XL";
						5:
							Escribir Sin Saltar "L";
						6:
							Escribir Sin Saltar "LX";
						7:
							Escribir Sin Saltar "LXX";
						8:
							Escribir Sin Saltar "LXXX";
						9:
							Escribir Sin Saltar "XC";
						10:
							Escribir Sin Saltar "C";
					FinSegun
					
					Segun unidades Hacer
						1:
							Escribir Sin Saltar "I";
						2:
							Escribir Sin Saltar "II";
						3:
							Escribir Sin Saltar "III";
						4:
							Escribir Sin Saltar "IV";
						5:
							Escribir Sin Saltar "V";
						6:
							Escribir Sin Saltar "VI";
						7:
							Escribir Sin Saltar "VII";
						8:
							Escribir Sin Saltar "VIII";
						9:
							Escribir Sin Saltar "IX";
						0:
							Escribir Sin Saltar "";
					FinSegun
					Escribir "";
					Escribir "";
				SiNo
					Escribir "El valor agregado es incorrecto, se encuentra fuera del rango";
				FinSi
			De Otro Modo:
				Escribir "No es una opci�n que tengamos, intentelo nuevamente";
		FinSegun
		Esperar 5 Segundos;
		//El esperar har� que se ejecute el programa y se den los resultados apareciendo un 
		//determinado numero de tiempo en pantalla antes de borrarse, y volver a arrojar el men�
	Hasta Que opcion1=0
	Escribir "Hasta la proxima";
FinProceso
