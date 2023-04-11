# DRUPAL 10

 * Drupal 10 guide



# Homepage, docs

 - https://www.drupal.org/download

 - https://www.drupal.org/docs/installing-drupal/drupal-quick-start-command

 - https://www.drupal.org/docs/getting-started/installing-drupal





# Install, Setup

 - Install

```
composer create-project drupal/recommended-project drupal 
cd drupal && php -d memory_limit=256M web/core/scripts/drupal quick-start demo_umami
```

 - Browse

   - http://127.0.0.1:8888/

 - Run server

   - symfony server:start          (in /drupal directory)

     - symfony server:start --port=8080

   - php -S 127.0.0.1:8000         (in /drupal/web directory)

     - php bin/console server:start --port=8080




# Install theme

 - https://www.drupal.org/project/themes

   - for example.: vani theme
```
composer require 'drupal/vani:^10.0'
```





# Development, modules

 - https://www.drupal.org/docs/official_docs/en/_local_development_guide.html






:)

