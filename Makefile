#
# DRUPAL 10 CMS
#

#
# variables:
#
DRUPALDIR = drupal
APPRUN = symfony server:start
HOST = localhost
PORT = 8000
SITENAME = 'Drupal 10 Demo Site'
LANG = hu
MEMLIMIT = 256M
# ------------------------------------------------------------------------------------------
# targets:
#

build:
	composer create-project drupal/recommended-project $(DRUPALDIR)


quickstart:
	cd $(DRUPALDIR) && php -d memory_limit=$(MEMLIMIT) web/core/scripts/drupal quick-start demo_umami


standardquickstart:
	cd $(DRUPALDIR) && php -d memory_limit=$(MEMLIMIT) web/core/scripts/drupal quick-start standard --site-name $(SITENAME) --host $(HOST) --port $(PORT) --langcode $(LANG)


run:
	cd $(DRUPALDIR); $(APPRUN) --port=$(PORT)


clean:
	sudo rm -rf $(DRUPALDIR)


