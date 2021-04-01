FROM drupal:latest

#Install Drush 
RUN cd /opt/drupal/ && composer require drush/drush 

#Add Drush to path
RUN cd /usr/sbin/ && ln -s /opt/drupal/vendor/drush/drush/drush drush