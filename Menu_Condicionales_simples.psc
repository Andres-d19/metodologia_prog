//Autor:Jos� Andr�s Gutierrez Vargas
//Descripci�n: 

SubProceso opcion <- menu //Este subproceso sirve para arrojar un valor dado seg�n la opci�n elegida, tambi�n da el men�
	Definir opcion Como Entero;
	Escribir "Bienvenido a los programas";
	Escribir "________________________________________________";
	Escribir "[1] Valor absoluto usando condicionales simples";
	Escribir "[2] Venta de llantas";
	Escribir "[3] Super market";
	Escribir "[4] Ecuaci�n cuadr�tica";
	Escribir "[5] Pago de colegiatura";
	Escribir "[6] Compra de casa";
	Escribir "[0] Salir";
	Escribir "________________________________________________";
	Escribir "";
	Escribir Sin Saltar "Elige tu programa a ejecutar";
	Leer opcion;
FinSubProceso

Proceso Menu_Condicionales_simples
	//Primero definimos una variable_numerica para la opci�n arrojada por el menu
	Definir opcion1 Como Entero;
	//Luego definiremos las variables de todos los c�digos para evitar los errores
	//Variables de la opci�n 1
	Definir VALO COMO REAL;
	//Variables de la opci�n 2
	Definir llantas Como Entero;
	Definir total Como Real;
	//Variables de la opci�n 3
	definir compra,descuento,nu_aleatorio Como Real;
	//Variables de la opci�n 4
	Definir a,b,c,x1,x2 Como Real;
	//Variables de la opci�n 5
	Definir colegiatura,pago,iva,pagofinal,pagosiniva,promedio Como Real;
	//Variables de la opci�n 6
	Definir ingresos,enganche,costo,porcentaje Como Real;
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
				Escribir "Valor absoluto usando condicionales simples";
				Escribir "________________________________________________";
				ESCRIBIR "INGRESA LA SIFRA";
				LEER VALO;
				SI VALO<0 Entonces
					VALO<-VALO*(-1);
				FinSi
				Escribir "VALOR APSOLUTO ", VALO;
			2:
				Escribir "Venta de llantas";
				Escribir "________________________________________________";
				Escribir "Ingresa total de llantas";
				leer llantas;
				Si llantas>=1 y llantas<=50 Entonces
					si llantas<5 Entonces
						total<-llantas*800;
					sino
						total<-llantas*700;
					FinSi
					Escribir "El n�mero de llantas a comprar ",llantas;
					Escribir "El monto total a pagar es: ",total;
				SiNo 
					Escribir "Valor en llantas no v�lido";
				FinSi
			3:
				Escribir "Super market";
				Escribir "________________________________________________";
				nu_aleatorio<-azar(100)+1;
				Escribir "NUMERO GENERADO ",nu_aleatorio;
				si nu_aleatorio<74 Entonces
					Escribir "TU DESCUENTO ES DEL 15% EN CUALQUIER ARTICULO DE LA TIENDA";
				FinSi
				si nu_aleatorio>=74 Entonces
					Escribir "TU DESCUENTO ES DEL 20% EN CUALQUIER ARTICULO DE LA TIENDA";
				FinSi
				Escribir "INGRESA EL TOTAL DE TU COMPRA";
				Leer compra;
				si compra<=0 Entonces
					Escribir "ERROR DE COMPRA";
				FinSi
				si nu_aleatorio<74 Entonces
					descuento<-compra*0.15;
					total<-compra-descuento;
					Escribir "EL TOTAL DE TU COMPRA CON EL DESCUENTO DEL 15% SERIA DE ",total," PESOS";
				FinSi
				si nu_aleatorio>=74 Entonces
					descuento<-compra*0.20;
					total<-compra-descuento;
					Escribir "EL TOTAL DE TU COMPRA CON EL DESCUENTO DEL 20% SERIA DE ",total," PESOS";
				FinSi
			4:
				Escribir "Ecuaci�n cuadr�tica";
				Escribir "________________________________________________";
				Escribir "Ingresa los valores A";
				Leer a;
				Escribir "Ingresa los valores B";
				Leer b;
				Escribir "Ingresa los valores C";
				Leer c;
				Si a=0 Entonces
					Escribir "ERROR Divisi�n por cero ";
				SiNo
					Definir disccriminante Como Real;
					disccriminante<-(b^2-4*a*c);
					Si disccriminante<0 Entonces
						Escribir "Error raices imaginarias";
					SiNo
						x2<-(-b+raiz(disccriminante))/(2*a);
						x1<-(-b-raiz(disccriminante))/(2*a);
						Escribir "Las raices son x1=",x1,"   x2=",x2;
					FinSi
				FinSi
			5:
				Escribir "Pago de colegiatura";
				Escribir "________________________________________________";
				Escribir "Ingresa el promedio del estudiante";
				Leer promedio;
				Escribir "ESCRIBE EL PAGO DEL LA COLEGIATURA";
				Leer pago;
				si promedio<=0 o promedio>10 Entonces
					Escribir "ERROR DE PROMEDIO";
				FinSi
				
				si promedio>=9 Entonces
					colegiatura<-pago*0.30;
					pagosiniva<-pago-colegiatura;
					Escribir "EL PAGO DEL LA COLEGIATURA CON UN 30% DE DESCUENTO ES DE: ",pagosiniva;
					Escribir "NOTA: no se le esta cobrando IVA";
					
				FinSi
				si promedio<9 Entonces
					iva<-pago*0.10;
					pagofinal<-pago+iva;
					Escribir "EL PAGO DE LA COLEGUIATURA ES DE: ",pagofinal;
					Escribir "NOTA: ya con el IVA";
				FinSi
			6:
				Escribir "Compra de casa";
				Escribir "________________________________________________";
				Escribir "ingresa el costo de la casa ";
				Leer costo;
				Escribir "ingresa tu capital";
				Leer ingresos;
				si ingresos<4000 Entonces
					Escribir "NO PODEMOS DARTE EL CREDITO NO GANAS LO SUFICIENTE";
				FinSi
				SI ingresos=4000 Entonces
					enganche<-costo*0.30;
					Escribir "EL ENGANCHE SERIA DEL 30% DEL VALOR DE LA CASA QUE SERIAN: ",enganche;
					porcentaje<-costo/120;
					Escribir "Y PAGARAS EN MENSUALIDADES DE: ",porcentaje, " A 10 A�OS";
				FinSi
				Si ingresos>=8000 Entonces
					enganche<-costo*0.15;
					porcentaje<-costo/60;
					Escribir "EL ENGANCHE SERIA DEL 15% DEL VALOR DE LA CASA QUE SERIAN: ",enganche;
					Escribir "Y PAGARAS EN MENSUALIDADES DE: ",porcentaje, " A 5 A�OS";
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
