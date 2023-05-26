Templates sujetos a modificaciones.
-------------------------------------------------


- Formateador de codigo: VHDL Formatter


- Indicaciones para usar makefile

Se estableceran las instrucciones para el uso del makefile con comandos make.



Previo a ejecutar un proyecto personal, se debe ingresar al makefile y configurar los siguientes parametros:
- 'MAIN_FILE': Archivo a evaluar en testbench
- 'TIME'    : Tiempo total de la simulacion.

Nota 1: puede que necesite cambiar el nombre de los directorios en la etiqueta #directorios del makefile (linea 1).
Nota 2: makefile espera que el archivo de testbench tenga el mismo nombre que su archivo fuente. En caso de que sea distinto, reemplazar SRC_FILE en las lineas de makefile correspondientes.



Para realizar un proyecto personal, desde su compilacion hasta la visualizacion en GtkView, ejecutar:

* 'make': ejecuta los comandos 1, 2 y 3 (leer make all).

* 'make all': ejecuta los comandos a continuacion, en una unica instruccion:
    1. 'make compile': compila los archivos de los directorios CMP_DIR, SRC_DIR, MAIN_DIR y TB_DIR. Necesariamente en ese orden
    2. 'make execute': ejecuta el testbench correspondiente a SRC_FILE.
    3. 'make run': corre el testbench correspondiente a TB_FILE, generando un archivo .vcd ejecutable.
    4. 'make view': ejecuta el archivo .vcd a traves de GtkWave, permitiendo visualizar las formas de onda.

Nota: si estos comandos se ejecutan en orden incorrecto, es probable que se obtenga un error. Para revertir esto, ejecutar 'make clean' y volver al paso '1.'.


* 'make vcd': genera un archivo temporal .vcd para eliminarse al hacer make clean (leer make clean)

* 'make clean': elimina los archivos .vcd y .cf generados. 