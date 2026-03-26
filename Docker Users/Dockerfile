FROM nginx:latest

# Actualizaciones del sistema como root.
RUN apt-get update && apt-get upgrade -y

# Crear grupo y usuario "admin".
RUN groupadd admin && useradd -g admin admin

# Asignar permisos mínimos necesarios a la carpeta HTML de NGINX.
RUN chown -R admin:admin /usr/share/nginx/html

# Cambiar al usuario "admin" para ejecutar NGINX.
USER admin

# Validación con un eco en bash.
RUN echo "NGINX corriendo como usuario: $(whoami)"