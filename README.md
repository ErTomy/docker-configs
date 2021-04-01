# Docker usado para Drupal en entorno de desarrollo

### se deben crear las siguientes carpetas:
* **db-data**: para almacenar de forma permanente los datos del mysql
* **www**: donde se alojará el código fuente

una vez levantados los contenedores para hacer la instalación de drupal ejecutar el comando

` docker-compose exec drupal composer install`

y ya se podría acceder desde el navegador a http://localhost para hacer la instalación normalmente

para instalar módulos con el comando drush

```shell
docker-compose exec drupal composer require 'drupal/paragraphs:^1.2'
docker-compose exec drupal drush en paragraphs
docker-compose exec drupal drush cr
```

después de las actualizaciones

```shell
docker-compose exec drupal drush updatedb
docker-compose exec drupal drush cache:rebuild
docker-compose exec drupal drush config:export --diff
```