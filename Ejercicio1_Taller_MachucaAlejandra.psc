Algoritmo gestionar_tienda_celulares
	Dimension marca_inventario[30]
	Dimension modelo_inventario[30]
	Dimension cantidad_inventario[30]
	Dimension precio_inventario[30]
	Dimension id_único[30]
	Dimension ventas[100]
	Dimension ventas[cont_ventas, 5]
	Dimension ventas[cont_ventas, 6]
	Dimension ventas[cont_ventas, 7]
	marca_inventario[0]="Samsung"
	marca_inventario[1]="Apple Inc"
	marca_inventario[2]="Huawei"
	marca_inventario[3]="Xiaomi"
	marca_inventario[4]="Motorola"
	modelo_inventario[0]="Samsung Galaxy A54"
	modelo_inventario[1]="Iphone 11 Pro Max"
	modelo_inventario[2]="Huawei Smartphone Nova 10 SE"
	modelo_inventario[3]="Xiaomi Redmi Note 13 Pro"
	modelo_inventario[4]="Motorola One Fusion"
	cantidad_inventario[0]=[15]
	cantidad_inventario[1]=[25]
	cantidad_inventario[2]=[28]
	cantidad_inventario[3]=[20]
	cantidad_inventario[4]=[15]
	precio_inventario[0]=[1400990]
	precio_inventario[1]=[3300000]
	precio_inventario[2]=[1500000]
	precio_inventario[3]=[1400990]
	precio_inventario[4]=[700240]
	id_único[0]=[0]
	id_único[1]=[1]
	id_único[2]=[2]
	id_único[3]=[3]
	id_único[4]=[4]
	Dimension nombre_marca_cliente[30]
	Dimension nombre_cantidad_cliente[30]
	Dimension nombre_precio_cliente[30]
	Definir cont_ventas Como Entero
	cont_ventas <- 0
	Definir continuar Como Caracter
	Definir proct como cadena
	Definir pre_Unidad, canti, total Como Real
	Definir booleano Como Logico
	booleano= Verdadero
	Definir producto_cliente Como Logico
	ab = Verdadero
	producto_cliente = Verdadero
	cantidad_productos = 5
Mientras ab = Verdadero Hacer
		
		Escribir "BIENVENIDOS A LA TIENDA DE CELULARES ALEJA!! :D"
		Escribir "########################################"
		Escribir "Estas son nuestras opciones: "
		Escribir "(1) Opción 1: Mostrar modelos disponibles"
		Escribir "(2) Opción 2: Agregar un nuevo modelo"
		Escribir "(3) Opción 3: Actualizar cantidad de un modelo"
		Escribir "(4) Opción 4: Realizar una venta"
		Escribir "(5) Opción 5: Mostrar ventas realizadas"
		Escribir "(0) Opción 0: Salir"
		Leer opc
		
		// Instrucciones a realizar según la opción elegida
		Segun opc hacer
			1:
			Escribir "Esta es la opción 1: "
			Escribir "Marca: ", marca_inventario[0]
			Escribir "Modelo: ", modelo_inventario[0]
			Escribir "Su precio es de: ", precio_inventario[0]
			Escribir "Cantidad disponible: ", cantidad_inventario[0]
			Escribir "ID: ", id_único[0]
			Escribir "####################################"
			
			Escribir "Esta es la opción 2: "
			Escribir "Marca: ", marca_inventario[1]
			Escribir "Modelo: ", modelo_inventario[1]
			Escribir "Su precio es de: ", precio_inventario[1]
			Escribir "Cantidad disponible: ", cantidad_inventario[1]
			Escribir "ID: ", id_único[1]
			Escribir "####################################"
			
			Escribir "Esta es la opción 3: "
			Escribir "Marca: ", marca_inventario[2]
			Escribir "Modelo: ", modelo_inventario[2]
			Escribir "Su precio es de: ", precio_inventario[2]
			Escribir "Cantidad disponible: ", cantidad_inventario[2]
			Escribir "ID: ", id_único[2]
			Escribir "####################################"
			
			Escribir "Esta es la opción 4: "
			Escribir "Marca: ", marca_inventario[3]
			Escribir "Modelo: ", modelo_inventario[3]
			Escribir "Su precio es de: ", precio_inventario[3]
			Escribir "Cantidad disponible: ", cantidad_inventario[3]
			Escribir "ID: ", id_único[3]
			Escribir "#####################################"
			
			Escribir "Esta es la opción 5: "
			Escribir "Marca: ", marca_inventario[4]
			Escribir "Modelo: ", modelo_inventario[4]
			Escribir "Su precio es de: ", precio_inventario[4]
			Escribir "Cantidad disponible: ", cantidad_inventario[4]
			Escribir "ID: ", id_único[4]
			Escribir "####################################"
			
			Escribir "Para volver a nuestras opciones principales presione (1)"
			Escribir "Para salir del programa presione (6)"
			Leer opc
			Limpiar Pantalla
			si opc = 0 Entonces
				ab = Falso
			FinSi
			2:
				Escribir "Stock actual: "
				Para i <- 0 Hasta 5 Hacer
					Escribir "############################"
					Escribir "Marca:", marca_inventario[i]
					Escribir "Modelo:", modelo_inventario[i]
					Escribir "Precio:", precio_inventario[i]
					Escribir "Cantidad en stock:", cantidad_inventario[i]
				FinPara
				Escribir "################################"
				//agregar modelo
				Escribir "Agregar un nuevo modelo"
				Escribir "Ingrese la marca del nuevo producto:"
				Leer marcaNueva
				Escribir "Ingrese el modelo del nuevo producto: "
				Leer modeloNuevo
				Escribir "Ingrese el precio del nuevo producto:"
				Leer precioNuevo
				Escribir "Ingrese la cantidad disponible del nuevo producto:"
				Leer cantidadDisponible
				Escribir "Ingrese el ID único del nuevo producto:"
				Leer IdÚnico
				
				marca_inventario[5] <- marcaNueva
				modelo_inventario[5] <- modeloNuevo
				precio_inventario[5] <- precioNuevo
				cantidad_inventario[5] <- cantidadDisponible
				id_único[5] <- IdÚnico
				Escribir "Stock actualizado"
				Para i <- 0 Hasta 5 Hacer
					Escribir "###########################"
					Escribir "Marca:", marca_inventario[i]
					Escribir "Modelo:", modelo_inventario[i]
					Escribir "Precio:", precio_inventario[i]
					Escribir "Cantidad disponible:", cantidad_inventario[i]
					
				FinPara
				Escribir "##########################"
				Escribir "##########################"
				Escribir "Presiona una tecla para continuar"
				Esperar Tecla
				Limpiar Pantalla
			
			3:
				Escribir "###################################"
				Escribir "productos disponibles"
				Escribir "###################################"
				Para i = 0 Hasta 5 Hacer
					Escribir "Producto #: ", i+1
					Escribir "Nombre: ", marca_inventario[i]
					Escribir "Cantidad de producto disponible: ", cantidad_inventario[i]
				FinPara
				
			4: 	
				Escribir "Ingrese el nombre del producto"
				Leer proct
				Escribir "Ingrese el precio por unidad del producto"
				Leer precio_udd
				Escribir "Ingrese la cantidad que desea del producto"
				Leer ctd
				total <- precio_udd * ctd
				Escribir "Detalles del producto vendido:"
				Escribir "Producto: ", proct
				Escribir "Precio por unidad del producto: ", precio_udd
				Escribir "Cantidad de unidades del producto: ", ctd
				Escribir "Total a pagar por el producto comprado: ", total
				Escribir "Muchas gracias por su compra, vuelva pronto! :D"
				
			5: 
				Repetir
					Escribir "Ingrese el nombre del producto que desea comprar: "
					Leer ventas[cont_ventas, 5]
					Escribir "Ingrese el precio por unidad del producto: "
					Leer ventas[cont_ventas, 6]
					Escribir "Ingrese la cantidad del producto que desea comprar: "
					Leer ventas[cont_ventas, 7]
					//ventas[cont_ventas, 8] <- ventas[cont_ventas, 5 * ventas[cont_ventas, 6]
					//cont_ventas <- cont_ventas + 1
					Escribir "Desea registrar alguna otra venta de nuestros productos? (si/no)"
					Leer continuar
				Hasta Que continuar = "no" o cont_ventas >= 30
				Escribir "Estas son las ventas realizadas en nuestra tienda de celulares: "
				Para i = 0 Hasta cont_ventas - 1 Hacer
					Escribir "Ventas: ", 1 + 1, " :"
					Escribir "Nombre del producto que se vendió: ", ventas[6, 5]
					Escribir "Precio por unidad del producto que se vendió: " ventas[6, 6]
					Escribir "Cantidad de unidades del producto vendidas: ", ventas[6, 7]
					Escribir "Este es el total de productos vendidos: ", ventas[6, 8]
				FinPara
			
		FinSegun
		
	FinMientras
 	
FinAlgoritmo
