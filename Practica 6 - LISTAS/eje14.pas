{
14. La oficina de becas y subsidios desea optimizar los distintos tipos de ayuda financiera que se brinda a
alumnos de la UNLP. Para ello, esta oficina cuenta con un registro detallado de todos los viajes realizados por
una muestra de 1300 alumnos durante el mes de marzo.
*  De cada viaje se conoce: 
*  el código de alumno (entre1 y 1300) 
* día del mes
*  Facultad a la que pertenece 
*  medio de transporte (1. colectivo urbano; 2. colectivo interurbano; 3. tren universitario; 4. tren Roca; 5. bicicleta). 
* 
* Tener en cuenta que un alumno puede utilizar más de un medio de transporte en un mismo día.
* 
Además, esta oficina cuenta con una tabla con información sobre el precio de cada tipo de viaje.
Realizar un programa que lea la información de los viajes de los alumnos y los almacene en una estructura de
datos apropiada. La lectura finaliza al ingresarse el código de alumno -1, que no debe procesarse.
Una vez finalizada la lectura, informar:
* 
a. La cantidad de alumnos que realizan más de 6 viajes por día
b. La cantidad de alumnos que gastan en transporte más de $80 por día
c. Los dos medios de transporte más utilizados.
d. La cantidad de alumnos que combinan bicicleta con algún otro medio de transporte
}

program eje14; 
const
	cantMediosTransporte = 5; 
	
	{* calculo que se disponen los precios de cada tipo de viaje
	precio_ColectivoUrb = 8.50;
	precio_ColectivoInterUrb + 8.40; 
	precio_TrenUniv = 3.70; 
	precio_TrenRoca = 6.25;
	* }
type
	rangoCodAlumno = 1..1300;
	rangoDias = 1..31; 
	str20 = string[20]; 
	rangoTransporte = 1..5; 
	
	viaje = record
			codAlu : rangoCodAlumno; 
			dia : rangoDias;
			facultad : str20;
			medioTransporte : rangoTransporte;
	end; 
	
	listaViajes = ^nodo; 
	nodo = record 
			elemento : viaje; 
			siguiente : listaViajes; 
	end; 
	
	{ aca voy a llevar la cuenta del uso de los medios de transporte }
	vContador = array [1..cantMediosTransporte] of integer;
	
