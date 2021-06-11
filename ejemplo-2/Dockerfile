# Selecciona la imagen base
FROM r-base:4.1.0

# Definimos el directorio de trabajo en /usr/src/myscript/
WORKDIR /usr/src/myscript/

# Copiamos fichero de dependencias
COPY requirements.R /usr/src/myscript/

# Instalación de las librerías necesarias
RUN Rscript requirements.R

# Copiamos los scripts
COPY predict.R /usr/src/myscript/

# Comando que se ejecuta cuando se arranque el contenedor
ENTRYPOINT [ "Rscript", "predict.R" ]
CMD [ "5.1", "3.5", "1.4", "0.2" ]