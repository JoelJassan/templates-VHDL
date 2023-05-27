# Templates sujetos a modificaciones.
-------------------------------------------------
## Table of Contents
1. [Formateador de codigo](#formateador-de-codigo)
2. [Todo sobre el makefile](#todo-sobre-el-makefile)
3. [Licencia](#Licencia)

## Formateador de codigo
VHDL Formatter
En settings.json:
```
"vhdl.formatter.align.function": true,
"vhdl.formatter.case.keyword": "LowerCase",
"vhdl.formatter.case.typename": "LowerCase",
"vhdl.formatter.align.procedure": true,
"vhdl.formatter.align.port": true,
"vhdl.formatter.align.generic": true,
"vhdl.formatter.align.all": true,
"settingsSync.ignoredSettings": [
    "vhdl.formatter.align.all"
]
```


## Todo sobre el makefile

Se espera la siguiente estructura de proyecto:

```
DIRECTORIO_DEL_PROYECTO
|- components
|   |- archivos individuales (sin dependencias)
|
|- main
|   |- archivo principal (del que se quiere hacer testbench)
|
|- source
|   |- archivos que tengan dependencias de los componentes
|
|- testbench
|   |- archivos de testbench
|
.gitignore
makefile
README.md
```

    

Se estableceran las instrucciones para el uso del makefile con comandos make.

Previo a ejecutar un proyecto personal, se debe ingresar al makefile y configurar los siguientes parametros:
- `MAIN_FILE`: archivo a evaluar en testbench
- `TIME`    : tiempo total de la simulacion

Nota 1: puede que necesite cambiar el nombre de los directorios en la etiqueta #directorios del makefile (linea 1).
Nota 2: makefile espera que el archivo de testbench tenga el mismo nombre que su archivo fuente. En caso de que sea distinto, reemplazar SRC_FILE en las lineas de makefile correspondientes.



Para realizar un proyecto personal, desde su compilacion hasta la visualizacion en GtkView, ejecutar:

* `make`: ejecuta los comandos 1, 2 y 3 (leer make all).

* `make all`: ejecuta los comandos a continuacion, en una unica instruccion:
    1. `make compile`: compila los archivos de los directorios CMP_DIR, SRC_DIR, MAIN_DIR y TB_DIR. Necesariamente en ese orden
    2. `make execute`: ejecuta el testbench correspondiente a SRC_FILE.
    3. `make run`: corre el testbench correspondiente a TB_FILE, generando un archivo .vcd ejecutable.
    4. `make view`: ejecuta el archivo .vcd a traves de GtkWave, permitiendo visualizar las formas de onda.
Nota: si estos comandos se ejecutan en orden incorrecto, es probable que se obtenga un error. Para revertir esto, ejecutar 'make clean' y volver al paso '1.'.

* `make vcd`: genera un archivo temporal .vcd para eliminarse al hacer make clean (leer make clean)

* `make clean`: elimina los archivos .vcd y .cf generados. 


# Licencia
Este código tiene licencia MIT. Ver `LICENSE.txt`.