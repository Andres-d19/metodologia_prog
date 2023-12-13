//Autor:José Andrés Gutierrez Vargas
//Descripción: 

SubProceso opcion <- menu //Este subproceso sirve para arrojar un valor dado según la opción elegida, también da el menú
	Definir opcion Como Entero;
	Escribir "Bienvenido a los programas";
	Escribir "________________________________________________";
	Escribir "[1] Sueldo de trabajador";
	Escribir "[2] Hospital en Crisis";
	Escribir "[3] Descripción día de la semana";
	Escribir "[4] Descripción del mes del año";
	Escribir "[5] Números Romanos";
	Escribir "[0] Salir";
	Escribir "________________________________________________";
	Escribir "";
	Escribir Sin Saltar "Elige tu programa a ejecutar";
	Leer opcion;
FinSubProceso

Proceso Menu_Condicionales_multiples
	//Primero definimos una variable_numerica para la opción arrojada por el menu
	Definir opcion1 Como Entero;
	//Luego definiremos las variables de todos los códigos para evitar los errores
	//Variables de la opción 1
	Definir tipo,hijos,sueldo,aumento,prima Como Entero;
	Definir nombre Como Caracter;
	//Variables de la opción 2
	Definir  tipoenf,dias,costo Como Entero;
	Definir paciente Como Caracter;
	//Variables de la opción 3
	Definir diasem Como Entero;
	//Variables de la opción 4
	Definir mes Como Entero;
	//Variables de la opción 5
	Definir decenas,unidades,numerom Como Entero;
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
				Escribir "Prima es de acuerdo al número de hijos [1,10]";
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
					Escribir "La prima de acuerdo al número de hijos es ",hijos*prima;
					Escribir "El nuevo sueldo es ",sueldo+aumento+(hijos*prima);
				SiNo
					Escribir "Se a ingresado un tipo de trabajador no válido";
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
				Escribir Sin Saltar "Ingrese el número de días";
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
					Escribir "Días hospitalizado: ",dias;
					Escribir "Tipo de enfermedad: ",tipoenf;
					Escribir "Costo total a pagar: ",costo;
				SiNo
					Escribir "El tipo de enfermedad ingresada no es correcta o esta fuera del catalogo";
				FinSi
			3:
				Escribir "Descripción día de la semana";
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
				Escribir Sin Saltar "Ingresa el número del día";
				Leer diasem;
				Segun diasem Hacer
					1:
						Escribir "DOMINGO DÍA FELIZ Y DEL SOL";
					2:
						Escribir "LUNES DÍA DE LA LUNA";
					3:
						Escribir "MARTES DÍA DE MARTE";
					4:
						Escribir "MIERCOLES DÍA DE MERCURIO";
					5:
						Escribir "JUEVES DÍA DE JUPITER";
					6:
						Escribir "VIERNES DÍA DE VENUS";
					7:
						Escribir "SABADO DÍA DE SATURNO";
					De Otro Modo:
						Escribir "Dato no válido";
					FinSegun
			4:
				Escribir "Descripción del mes del año";
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
				Escribir Sin Saltar "Ingresa el número del mes que deseas saber";
				Leer mes;
				Segun mes Hacer
					1:
						Escribir "Enero es el primer mes del año en el calendario gregoriano y tiene 31 días";
					2:
						Escribir "Febrero es el segundo mes del año en el calendario gregoriano. Tiene 28 días y 29 en los años bisiestos.";
					3:
						Escribir "Marzo es el tercer mes del año en el calendario gregoriano y tiene 31 días";
					4:
						Escribir "Abril es el cuarto mes del año y es uno de los cuatro meses que tienen 30 días";
					5:
						Escribir "Mayo es el quinto mes del año en el calendario gregoriano y tiene 31 días";
					6:
						Escribir "Junio es el sexto mes del año en el Calendario Gregoriano y tiene 30 días";
					7:
						Escribir "Julio es el séptimo mes del año en el calendario gregoriano y tiene 31 días";
					8:
						Escribir "Agosto es el octavo mes del año en el calendario gregoriano y tiene 31 días";
					9:
						Escribir "Septiembre es el noveno mes del año en el calendario gregoriano y tiene 30 días";
					10:
						Escribir "Octubre es el décimo mes del año en el calendario gregoriano y tiene 31 días.";
					11:
						Escribir "Noviembre es el undécimo y penúltimo mes del año en el calendario gregoriano y tiene 30 días";
					12:
						Escribir "Diciembre es el duodécimo y último mes del año en el calendario gregoriano y tiene 31 días";
					De Otro Modo:
						Escribir "Dato no válido";
					FinSegun
			5:
				Escribir "Números Romanos";
				Escribir "________________________________________________";
				Escribir "Dado un número entre 1 y 100 se dará su equivalente romano";
				Escribir Sin Saltar "Ingresa un número del [1,100]";
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
				Escribir "No es una opción que tengamos, intentelo nuevamente";
		FinSegun
		Esperar 5 Segundos;
		//El esperar hará que se ejecute el programa y se den los resultados apareciendo un 
		//determinado numero de tiempo en pantalla antes de borrarse, y volver a arrojar el menú
	Hasta Que opcion1=0
	Escribir "Hasta la proxima";
FinProceso
