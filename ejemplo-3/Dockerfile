# Selecciona la imagen base
FROM python:3.9.5-slim-buster

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
CMD [ "--input", "5.1", "3.5", "1.4", "0.2" ]