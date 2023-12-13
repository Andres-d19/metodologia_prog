//Autor:José Andrés Gutierrez Vargas
//Descripción: 

SubProceso opcion <- menu //Este subproceso sirve para arrojar un valor dado según la opción elegida, también da el menú
	Definir opcion Como Entero;
	Escribir "Bienvenido a los programas";
	Escribir "________________________________________________";
	Escribir "[1] Contar A";
	Escribir "[2] Nombre vacio";
	Escribir "[3] Secuencia de collatz";
	Escribir "[4] Valida vocal";
	Escribir "[5] Validación de nombre";
	Escribir "[6] Validación de número entre rangos";
	Escribir "[7] Validación de Rango";
	Escribir "[0] Salir";
	Escribir "________________________________________________";
	Escribir "";
	Escribir Sin Saltar "Elige tu programa a ejecutar";
	Leer opcion;
FinSubProceso

Proceso Menu_Repetir_hasta_que
	//Primero definimos una variable_numerica para la opción arrojada por el menu
	Definir opcion1 Como Entero;
	//Luego definiremos las variables de todos los códigos para evitar los errores
	//Variables de la opción 1
	Definir a,letra Como Texto;
	Definir contador Como Entero;
	//Variables de la opción 2
	Definir nombre Como Caracter;
	Definir extension Como Entero;
	//Variables de la opción 3
	Definir n Como Entero;
	//Variables de la opción 4
	Definir vocal Como Caracter;
	//Variables de la opción 5
	Definir long Como Entero;
	//Variables de la opción 6
	Definir numer Como Entero;
	//Variables de la opción 7 
	Definir num Como Entero;
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
				Escribir "Contar A";
				Escribir "________________________________________________";
				contador<-0;
				a<-"A";
				Escribir "Algoritmo que va contando cuantas letras A se ingresan antes de ingresar un .";
				Escribir "Ingresar los caracteres:";
				Repetir
					Leer letra;
					Si letra=a Entonces
						contador<-contador+1;
					FinSi
				Hasta Que letra="."
				
				Escribir contador;
				
			2:
				Escribir "Nombre vacio";
				Escribir "________________________________________________";
				Escribir "Algoritmo que valida que un nombre no este en blanco, que tenga caracteres validos y sea un nombre.";
				Repetir
					Escribir Sin Saltar "Ingresa un nombre";
					Leer nombre;
					extension<-Longitud(nombre);
				Hasta Que extension>0 y (nombre<>"" o nombre<>" ")
				
				Escribir "Has ingresado el nombre de forma adecuada";
			3:
				Escribir "Secuencia de collatz";
				Escribir "________________________________________________";
				Escribir "Ingresa el número";
				Leer n;
				contador<-1;
				Escribir "Algoritmo en el que siempre se hará un preceso A UN DETERMINADO NUMERO dependiendo de si es PAR o IMPAR";
				Repetir
					Si (n mod 2)=0 Entonces
						n<-n/2;
					SiNo
						n<-(n*3)+1;
					FinSi
					contador<-contador+1;
				Hasta Que n=1
				Escribir contador;
			4:
				Escribir "Valida vocal";
				Escribir "________________________________________________";
				Escribir "Algoritmo que valida si es un caracter vocal o no, independientemente si esta acentuado o no";
				Repetir
					Escribir Sin Saltar"Ingrese un caracter";
					Leer vocal;
				Hasta Que vocal="a" o vocal="e" o vocal="i" o vocal="o" o vocal="u" o vocal="á" o vocal="é" o vocal="í" o vocal="ó" o vocal="ú" 
				
				Escribir "Has ingresado la vocal de forma correcta";
			5:
				Escribir "Validación de nombre";
				Escribir "________________________________________________";
				Definir long Como Entero;
				Escribir "Algoritmo que valida que un nombre este entre los 3 y los 50 caracteres.";
				Repetir
					Escribir "Ingresa un nombre entre 3 y 50 caracteres";
					Leer nombre;
					long<-Longitud(nombre);
				Hasta Que long<50 y long>3 y nombre<>" "
				
				Escribir "Has ingresado el nombre correctamente";
				Escribir "";
			6:
				Escribir "Validación de número entre rangos";
				Escribir "________________________________________________";
				Escribir "Algoritmo que validar un número entre los rangos [1,10] y [40,50]";
				Repetir
					Escribir Sin Saltar "Ingresa un número entre los rango [1,10] y [40,50]";
					Leer numer;
				Hasta Que (numer<=10 y numer>=1) o (numer<=50 y numer>=40)
				Escribir "Has ingresado el número adecuado";
			7:
				Escribir "Validación de Rango";
				Escribir "________________________________________________";
				Escribir "Algoritmo que valida si un numero esta entre el rango de [18,110]";
				Repetir
					Escribir Sin Saltar "Ingresa el número que entre en el rango [18,110]";
					Leer num;
				Hasta Que num>=18 y num<=110
				Escribir "Has ingresado el número correctamente";
			De Otro Modo:
				Escribir "No es una opción que tengamos, intentelo nuevamente";
		FinSegun
		Esperar 5 Segundos;
		//El esperar hará que se ejecute el programa y se den los resultados apareciendo un 
		//determinado numero de tiempo en pantalla antes de borrarse, y volver a arrojar el menú
	Hasta Que opcion1=0
	Escribir "Hasta la proxima";
FinProceso