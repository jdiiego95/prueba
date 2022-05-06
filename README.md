# Historia de usuario

**Subir y bajar servicios de linux**

- Como Desarrollador
- Puedo Subir, bajar y reiniciar los servicios de linux de manera dinámica
- Para Agilizar mis procesos

**Detalles**

- El código debe permitir activar, desactivar y reiniciar los servicios de linux
- Se deben generar 3 ramas, una de desarrollo, otra de pruebas y de producción, la cual almacenara la versión más sencilla
- La rama de desarrollo generará un mensaje a un webhook cuando se active, desactive y reinicie un servicio
- La rama de pruebas debe generar un mensaje y almacenarlo en un log cuando se active, desactive y reinicie un servicio

# Introduction

Lo que se pretende con este proyecto es crear un codigo que sirva para subir, bajar y reiniciar los servicios de linux

## Instalación

Para ejecutar el codigo, se debe ingresar a la terminal de lunix sobre la carpeta que se almaseno ejecutar `./menu.sh`

## Uso

### Rama producción

Después de ejecutar el código sé mostrar un menú como el siguiente:
![Image-1](https://i.postimg.cc/pXbH1dqW/Captura.jpg)

En el cual, en la opción 1 le permitirá listar todos los servicios, ya sea los que estén activados o desactivados, en las demás opciones como se evidencia en los títulos el 2 permite Activar un servicio, el 3 desactivarlo, el 4 reiniciarlo y el 5 verificar en que estado se encuentra el servicio, y verificar que se esté ejecutando correctamente, en el uso solo se debe colocar el nombre del servicio y el algoritmo sé encargar de la función que escoja.

### Rama Pruebas

<<<<<<< HEAD
Tiene la misma ejecución que la rama anterior, solo que para esta rama se generó una carpeta llamada Reporte, la cual tiene un archivo reporte.log, donde guarda el historial de las funciones al activarlas, desactivarlas y reiniciarlas
=======
Tiene la misma ejecución que la rama anterior, solo que para esta rama se generó una carpeta llamada Reporte, la cual tiene un archivo reporte.log, donde guarda el historial de las funciones al activarlas, desactivarlas y restablecerlas
>>>>>>> 190d2fb07bf33f351e19cf14ffbda501021d6fad
![Image-2](https://i.postimg.cc/Pq3LmDbr/Captura.jpg)

### Rama Desarrollo

<<<<<<< HEAD
Tiene la misma ejecución que las ramas anteriores, solo que para esta rama se genera un reporte en un webhook de slack cuando las funciones se activen, desactiven o reinicien
=======
Tiene la misma ejecución que las ramas anteriores, solo que para esta rama se genera un reporte en un webhook cuando las funciones se activen, desactiven o restablezcan
>>>>>>> 190d2fb07bf33f351e19cf14ffbda501021d6fad

## Biblografia

- [](https://computernewage.com/2019/01/13/scripting-linux-bash-crear-ejecutar-script/#:~:text=Para%20crear%20un%20script%20en,Un%20editor%20de%20texto%20gr%C3%A1fico.)
- [](https://computernewage.com/2019/09/20/linux-terminal-servicios-gestion/#systemctl-servicio-iniciar-detener)
- [](https://conocimientolibre.mx/servicios-ubuntu/)
- [](https://www.geeksforgeeks.org/start-stop-restart-services-using-systemctl-in-linux/)
- [](https://atareao.es/tutorial/scripts-en-bash/log-en-bash/)
- [](https://www.studytonight.com/post/solved-getting-error-while-executing-a-sh-file-binbashm-bad-interpreter)
<<<<<<< HEAD
- [](https://diarioinforme.com/como-enviar-un-mensaje-a-slack-desde-un-script-bash/#:~:text=Haga%20clic%20en%20%22Agregar%20nuevo,sus%20DM%20y%20recibir%C3%A1n%20notificaciones.)
=======
>>>>>>> 190d2fb07bf33f351e19cf14ffbda501021d6fad
