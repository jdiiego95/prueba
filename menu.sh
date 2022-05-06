#!/usr/bin/bash
function  functions {
    sudo service $service $1
}
function  functionsR {
    echo -e "$(date +%c) $service $1" >> Reporte/reporte.log 
}
function  functionsLogger {
    logger "$service $1"
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
        echo "Hasta la próxima!" 
        exit
    
    elif [ "$opc" = "$Opc5" ]; then 
    echo "Escriba el nombre del servicio para verificar el estado"
    read service
    functions $service status

    elif [ "$opc" = "$Opc4" ]; then 
    echo "Escriba el nombre del servicio que desea reiniciar"
    read service
    functions restart
    functionsR Reiniciado
    functionsLogger Reiniciado
 
    elif [ "$opc" = "$Opc3" ]; then
    echo "Escriba el nombre del servicio que desea desactivar"
    read service
    functions stop
    functionsR Desactivado 
    functionsLogger Desactivado
 
    elif [ "$opc" = "$Opc2" ]; then
    echo "Escriba el nombre del servicio que desea activar"
    read service
    functions start
    functionsR Activado 
    functionsLogger Activado
 
    elif [ "$opc" = "$Opc1" ]; then 
    echo "Listado de servicios"
    functions --status-all
 
 
    else
        echo "Opción no válida" 
    fi
    done

