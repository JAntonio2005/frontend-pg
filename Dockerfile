# Imagen base de Node
FROM node:20

# Crear carpeta de trabajo
WORKDIR /app

FROM httpd:2.4

# Copia tu frontend (HTML, JS, CSS) al directorio público de Apache
COPY . /usr/local/apache2/htdocs/

# Instalar dependencias
RUN npm install

# Exponer el puerto (Render lo reemplaza con $PORT)
EXPOSE 3000

# Usar "serve" para levantar contenido estático
CMD ["npx", "serve", "-l", "3000", "."]
