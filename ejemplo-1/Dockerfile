# Selecciona la imagen base
FROM r-base:4.2.2

# Definimos el directorio de trabajo en /usr/src/myscript/
WORKDIR /usr/src/myscript/

# Copiamos los scripts
COPY main.R /usr/src/myscript/

# Comando que se ejecuta cuando se arranque el contenedor
CMD ["Rscript", "main.R"]