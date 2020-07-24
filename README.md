# docker-configs

Seleccionar la rama según el entorno de trabajo a usar

### comandos habituales de docker

| Comando                                   | Función                           |
|:------------------------------------------|:----------------------------------|
| docker system prune -a                    | borra los contenedores e imagenes | 
| docker rm -f $(docker ps -aq) 			| borra todos los contenedores      | 
| docker network rm $(docker network ls -q) | borra todas las redes             | 
| docker ps -a					            | listar los contenedores           | 
| docker rm container_id				    | borrar un contenedor concreto     | 
| docker image list				            | listar las imagenes disponibles   | 
| docker rmi image_id				        | borrar una imagen concreta        | 