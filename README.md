# Historia de usuario

**Subir y bajar servicios de linux**

- Como Desarrollador
- Puedo Subir, bajar y restablecer los servicios de linux de manera dinámica
- Para Agilizar mis procesos

**Detalles**

- El código debe permitir activar, desactivar y restablecer los servicios de linux
- Se deben generar 3 ramas, una de desarrollo, otra de pruebas y de producción, la cual almacenara la versión más sencilla
- La rama de desarrollo generará un mensaje a un webhook cuando se active, desactive y restablezca un servicio
- La rama de pruebas debe generar un mensaje y almacenarlo en un log cuando se active, desactive y restablezca un servicio

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

Tiene la misma ejecuacion que la rama anterior, solo que para esta rama se genero una carpeta llamada
