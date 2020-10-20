Algoritmo agenda
	
	definir menu como caracter; 
	definir num como entero; 
	definir vnombres como caracter; 
	definir vtelefono,tam,i,j como entero;
	
	menu= "1 Añadir contactos, 2 Buscar, 3 Editar, 4 Eliminar, 5 Salir"; 
	j=0;
	i=0;
	tam=4;
	dimension vnombres[tam];
	dimension vtelefono[tam];
	
	escribir "Bienvenido a tu agenda. Que quieres hacer?";
	
	Repetir
		escribir menu;  
		leer num;
		Segun num Hacer
			1:
				escribir "AÑADIR CONTACTOS:escribe nombre ";
						leer vnombres[i]; 
						escribir "escribe telefono"; 
						leer vtelefono[j]; 
						escribir "contacto guardado";				
			2:
				escribir "BUSCAR:escribe nombre"; 
				leer vnombres[i];
				escribir "Su telefono es ", vtelefono[j];
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
			
		fin segun
	
	Hasta Que num==5; 
		escribir "Hasta luego!"; 
	
FinAlgoritmo
