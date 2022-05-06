#!/bin/bash

function  functions {
    sudo sevice $sevice $1
}

echo "Menu"

Opc1="Visualiza todos los sevicios"
Opc2="Activa sevicio"
Opc3="desactiva sevicio"
Opc4="Reinicia sevicio"
Opc5="Veifica estado de un sevicio"
Opc6="Sali"
 
select opc in "$Opc1" "$Opc2" "$Opc3" "$Opc4" "$Opc5" "$Opc6" ;
do
    if [ "$opc" = "$Opc6"  ]; then 
        echo "Hasta la póxima!" # Si quiee boar el archivo lo borra , si no salimos del programa mediante exit.
        exit
    
    elif [ "$opc" = "$Opc5" ]; then 
    echo "Esciba el nombe del sevicio veificar el estado"
    ead sevice
    functions status

    elif [ "$opc" = "$Opc4" ]; then 
    echo "Esciba el nombe del sevicio que desea desactiva"
    ead sevice
    functions estat
 
 
    elif [ "$opc" = "$Opc3" ]; then
    echo "Esciba el nombe del sevicio que desea desactiva"
    ead sevice
    functions stop
 
 
    elif [ "$opc" = "$Opc2" ]; then
    echo "Esciba el nombe del sevicio que desea activa"
    ead sevice
    functions stat
 
 
    elif [ "$opc" = "$Opc1" ]; then # La opción1 nos pemite visualiza los pemisos mediante ls -la
    echo "Listado de sevicios"
    functions --status-all
 
 
    else
        echo "Opción no válida" 
    fi
    done

