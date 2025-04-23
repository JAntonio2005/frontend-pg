# Imagen base de Node
FROM node:20

# Crear carpeta de trabajo
WORKDIR /app

# Copiar todos los archivos al contenedor
COPY . .

# Instalar dependencias
RUN npm install

# Exponer el puerto (Render lo reemplaza con $PORT)
EXPOSE 3000

# Usar "serve" para levantar contenido estático
CMD ["npx", "serve", "-l", "3000", "."]
