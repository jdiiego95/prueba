#!/bin/bash
function  functions {
    sudo service $service $1
}
function functionsWebHook {
    curl -X POST -H 'Content-type: application/json' --data '{"text":"'$service' fue '$1'"}' https://hooks.slack.com/services/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
}

echo "Menú"

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
    functionsWebHook reiniciado
 
 
    elif [ "$opc" = "$Opc3" ]; then
    echo "Escriba el nombre del servicio que desea desactivar"
    read service
    functions stop
    functionsWebHook desactivado
 
 
    elif [ "$opc" = "$Opc2" ]; then
    echo "Escriba el nombre del servicio que desea activar"
    read service
    functions start
    functionsWebHook activado
 
    elif [ "$opc" = "$Opc1" ]; then 
    echo "Listado de servicios"
    functions --status-all
 
 
    else
        echo "Opción no válida" 
    fi
    done

