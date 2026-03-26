# !/bin/bash

# elimina imágenes sin tag y no asociadas. El parámetro -a es all en inglés, “todo”.
docker image prune -a

# elimina contenedores detenidos o pausados que no borraste.
docker container prune

# elimina volúmenes locales anónimos no utilizados.
docker volume prune

# borra imágenes, contenedores, volúmenes y además redes no usadas.
docker system prune

# limpiar caché de imágenes
docker builder prune