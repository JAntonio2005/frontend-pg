# Usa la imagen oficial de Apache para servir archivos estáticos
FROM httpd:2.4

# Copia tu frontend (HTML, JS, CSS) al directorio público de Apache
COPY . /usr/local/apache2/htdocs/
