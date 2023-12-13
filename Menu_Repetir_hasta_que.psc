//Autor:Jos� Andr�s Gutierrez Vargas
//Descripci�n: 

SubProceso opcion <- menu //Este subproceso sirve para arrojar un valor dado seg�n la opci�n elegida, tambi�n da el men�
	Definir opcion Como Entero;
	Escribir "Bienvenido a los programas";
	Escribir "________________________________________________";
	Escribir "[1] Contar A";
	Escribir "[2] Nombre vacio";
	Escribir "[3] Secuencia de collatz";
	Escribir "[4] Valida vocal";
	Escribir "[5] Validaci�n de nombre";
	Escribir "[6] Validaci�n de n�mero entre rangos";
	Escribir "[7] Validaci�n de Rango";
	Escribir "[0] Salir";
	Escribir "________________________________________________";
	Escribir "";
	Escribir Sin Saltar "Elige tu programa a ejecutar";
	Leer opcion;
FinSubProceso

Proceso Menu_Repetir_hasta_que
	//Primero definimos una variable_numerica para la opci�n arrojada por el menu
	Definir opcion1 Como Entero;
	//Luego definiremos las variables de todos los c�digos para evitar los errores
	//Variables de la opci�n 1
	Definir a,letra Como Texto;
	Definir contador Como Entero;
	//Variables de la opci�n 2
	Definir nombre Como Caracter;
	Definir extension Como Entero;
	//Variables de la opci�n 3
	Definir n Como Entero;
	//Variables de la opci�n 4
	Definir vocal Como Caracter;
	//Variables de la opci�n 5
	Definir long Como Entero;
	//Variables de la opci�n 6
	Definir numer Como Entero;
	//Variables de la opci�n 7 
	Definir num Como Entero;
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
				Escribir "Ingresa el n�mero";
				Leer n;
				contador<-1;
				Escribir "Algoritmo en el que siempre se har� un preceso A UN DETERMINADO NUMERO dependiendo de si es PAR o IMPAR";
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
				Hasta Que vocal="a" o vocal="e" o vocal="i" o vocal="o" o vocal="u" o vocal="�" o vocal="�" o vocal="�" o vocal="�" o vocal="�" 
				
				Escribir "Has ingresado la vocal de forma correcta";
			5:
				Escribir "Validaci�n de nombre";
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
				Escribir "Validaci�n de n�mero entre rangos";
				Escribir "________________________________________________";
				Escribir "Algoritmo que validar un n�mero entre los rangos [1,10] y [40,50]";
				Repetir
					Escribir Sin Saltar "Ingresa un n�mero entre los rango [1,10] y [40,50]";
					Leer numer;
				Hasta Que (numer<=10 y numer>=1) o (numer<=50 y numer>=40)
				Escribir "Has ingresado el n�mero adecuado";
			7:
				Escribir "Validaci�n de Rango";
				Escribir "________________________________________________";
				Escribir "Algoritmo que valida si un numero esta entre el rango de [18,110]";
				Repetir
					Escribir Sin Saltar "Ingresa el n�mero que entre en el rango [18,110]";
					Leer num;
				Hasta Que num>=18 y num<=110
				Escribir "Has ingresado el n�mero correctamente";
			De Otro Modo:
				Escribir "No es una opci�n que tengamos, intentelo nuevamente";
		FinSegun
		Esperar 5 Segundos;
		//El esperar har� que se ejecute el programa y se den los resultados apareciendo un 
		//determinado numero de tiempo en pantalla antes de borrarse, y volver a arrojar el men�
	Hasta Que opcion1=0
	Escribir "Hasta la proxima";
FinProceso