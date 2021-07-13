# Docker usado para entornos de PHP y MySQL especificos en entorno de desarrollo
Sistema mínimo, si es necesario instalar algún modulo extra de php se debe añadir en el fichero docker/php/Dockerfile

### se deben crear las siguientes carpetas:
* **db-data**: para almacenar de forma permanente los datos del mysql
* **www**: donde se alojará el código fuente

### variables de entorno
Este entorno lo uso cuando tengo que usar versiones muy concretas de php y mysql, para ello se especifican como variables en el fichero .env

