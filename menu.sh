#!/bin/bash
function  functions {
    sudo service $1 $2
}

echo "Menu"

Opc1="Visualizar todos los servicios"
Opc2="Activar servicio"
Opc3="desactivar servicio"
Opc4="Reiniciar servicio"
Opc5="Verificar estado de un servicio"
Opc6="Salir"
 
select opc in "$Opc1" "$Opc2" "$Opc3" "$Opc4" "$Opc5" "$Opc6" ;
do
    if [ "$opc" = "$Opc6"  ]; then 
        echo "Hasta la próxima!" # Si quiere borrar el archivo lo borra , si no salimos del programa mediante exit.
        exit
    
    elif [ "$opc" = "$Opc5" ]; then 
    echo "Escriba el nombre del servicio verificar el estado"
    read service
    functions $service status

    elif [ "$opc" = "$Opc4" ]; then 
    echo "Escriba el nombre del servicio que desea desactivar"
    read service
    functions $service restart
 
 
    elif [ "$opc" = "$Opc3" ]; then
    echo "Escriba el nombre del servicio que desea desactivar"
    read service
    functions $service stop
 
 
    elif [ "$opc" = "$Opc2" ]; then
    echo "Escriba el nombre del servicio que desea activar"
    read service
    functions $service start
 
 
    elif [ "$opc" = "$Opc1" ]; then # La opción1 nos permite visualizar los permisos mediante ls -la
    echo "Listado de servicios"
    functions --status-all
 
 
    else
        echo "Opción no válida" 
    fi
    done

