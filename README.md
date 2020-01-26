# README

## Descripción

Oracle Data Integrator 12.2.1.3 sobre Docker.

## Requisitos

En windows 10, instale y configure el siguiente software  
(usando las opciones por defecto):  

+ [Docker](https://docs.docker.com/docker-for-windows/install/)
+ [Xming](https://sourceforge.net/projects/xming/) (servidor X)

## Scripts

+ **start**: Inicia la BBDD, configura un dominio y levanta un agente "Stand Alone".  
Para parar los contenedores: CTRL-C (x2 para matarlos).

+ **client**: Inicia ODI studio.

### Directorios enlazados

El contenedor del cliente, monta los siguientes directorios de la máquina host  
(si no existen se crearán al arrancar por primera vez):

+ **ODIconf -> /opt/oracle/.odi** Almacena los parámetros de configuración, entre ellos, las conexiones a los repositorios.

+ **ODIdata -> /opt/oracle/hostfolder** Libre uso.
