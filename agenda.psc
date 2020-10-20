Algoritmo agenda
	
	definir menu, telefono, nombre, aux, nombreBusqueda como caracter; 
	definir num como entero; 
	definir vnombres como caracter; 
	definir tam,i,j como entero;
	
	menu= "1 Añadir contactos, 2 Buscar, 3 Editar, 4 Eliminar, 5 Ver todos, 6 Salir"; 
	
	i=0;
	tam=10;
	dimension vnombres[tam];
	
	Para i=0 hasta tam-1 Con Paso 1 Hacer
		vnombres[i] = "";
	FinPara
	
	escribir "Bienvenido a tu agenda. Que quieres hacer?";
	
	Repetir
		escribir menu;  
		leer num;
		Segun num Hacer
			1:
				escribir "AÑADIR CONTACTOS:escribe nombre ";
						leer nombre; 
						escribir "escribe telefono"; 
						leer telefono;
						aux = nombre + ";" + telefono;
						//Buscar la primera posicion libre
						Para i=0 hasta tam-1 Con Paso 1 Hacer
							Si (vnombres[i] == "") Entonces
								vnombres[i]=aux;
								i=tam;
							FinSi
						FinPara
						escribir "contacto guardado";				
			2:
				escribir "BUSCAR:escribe nombre"; 
				//Leer el nombre a buscar
				leer nombreBusqueda;
				
				//Buscar el nombre en el vector
				//a- Recorrer el vector
				para i= 0 hasta tam-1 con paso 1 hacer;
					//b- Obtenemos la linea
					aux = vnombres[i];
					nombre = "";
					//c- Troceamos la linea que tenemos en aux
					Para j = 0 hasta Longitud(aux) Con Paso 1 Hacer
						Si (subcadena(aux,j,j) == ";") Entonces
							nombre = Subcadena(aux,0,j-1);
							telefono = Subcadena(aux,j+1,Longitud(aux));
						FinSi
					FinPara
					
					//d- comparamos nombre con nombreBusqueda
					si nombrebusqueda==nombre Entonces
						escribir nombre " - " telefono;
						
					FinSi	
					
				FinPara
				
			3: 
				escribir "EDITAR:escribe nombre ";
				leer vnombre; 
				escribir "modifica su contenido "; 
				leer vnombre; 
				escribir "contacto modificado"; 
			4:
				escribir "ELIMINAR:escribe nombre "; 
				leer vnombre; 
				escribir "contacto eliminado"; 
				
			5:
				escribir "Ver todos los contactos: ";
				Para i=0 hasta tam-1 Con Paso 1 Hacer
					si vnombres[i]<>"" Entonces
						//Separo nombre y telefono
						aux = vnombres[i];
						Para j = 0 hasta Longitud(aux) Con Paso 1 Hacer
							Si (subcadena(aux,j,j) == ";") Entonces
								nombre = Subcadena(aux,0,j-1);
								telefono = Subcadena(aux,j+1,Longitud(aux));
							FinSi
						FinPara
						
						Escribir nombre + "  -  " + telefono;
					FinSi
				FinPara
			
		fin segun
	
	Hasta Que num==6; 
		escribir "Hasta luego!"; 
	
FinAlgoritmo
