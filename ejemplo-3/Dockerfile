# Selecciona la imagen base
FROM python:3.9.0

# Definimos el directorio de trabajo en /usr/src/myscript/
WORKDIR /usr/src/myscript/

# Copiamos fichero de dependencias
COPY requirements.txt /usr/src/myscript/

# Instalación de las librerías necesarias
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos los scripts
COPY predict.py /usr/src/myscript/

# Comando que se ejecuta cuando se arranque el contenedor
ENTRYPOINT [ "python", "predict.py" ]
CMD [ "--input", "1", "2", "3", "4" ]