# Docker usado para Laravel en entorno de desarrollo
Sistema mínimo, si es necesario instalar algún modulo extra de php se debe añadir en el fichero Dockerfile

### se deben crear las siguientes carpetas:
* **db-data**: para almacenar de forma permanente los datos del mysql
* **www**: donde se alojará el código fuente

### ejecutar comandos de composer npm y artisan

* `docker-compose run --rm composer update`
* `docker-compose run --rm npm run dev`
* `docker-compose run --rm artisan migrate` 

