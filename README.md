# Pasos de instalación:

Una vez levantado el contenedor, seguir los siguientes pasos


1. **Instalar Drupal:**
   ```bash
   docker-compose exec drupal composer install
   ```

2. **Crear el archivo de configuración:**
   ```bash
   docker-compose exec drupal cp /var/www/html/web/sites/default/default.settings.php /var/www/html/web/sites/default/settings.php
   docker-compose exec drupal chown www-data:www-data /var/www/html/web/sites/default/settings.php
   ```

3. **Crear el directorio de traducciones:**
   ```bash
   docker-compose exec drupal mkdir -p /var/www/html/web/sites/default/files/translations
   docker-compose exec drupal chown -R www-data:www-data /var/www/html/web/sites/default/files
   ```

4. **Linkar el comando Drush:**
   ```bash
   docker-compose exec drupal ln -s /var/www/html/vendor/bin/drush /usr/local/bin/drush
   ```