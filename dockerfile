# Seleccionar la imagen base
FROM python:3.10

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos de la aplicación
COPY . /app

# Instalar las dependencias
RUN pip install -r requirements.txt

# Realizar migraciones
RUN python manage.py makemigrations
RUN python manage.py migrate

CMD ["python", "write.py"]
