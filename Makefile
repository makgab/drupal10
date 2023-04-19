#
# DRUPAL 10 CMS
#

#
# variables:
#
NAME = drupal
APPRUN = symfony server:start
IMAGE = fedora-drupal
HOST = localhost
PORT = 8000
SITENAME = 'Drupal 10 Demo Site'
LANG = hu
MEMLIMIT = 256M
# ------------------------------------------------------------------------------------------
# targets:
#

build:
	composer create-project drupal/recommended-project $(NAME)


quickstart:
	cd $(NAME) && php -d memory_limit=$(MEMLIMIT) web/core/scripts/drupal quick-start demo_umami


standardquickstart:
	cd $(NAME) && php -d memory_limit=$(MEMLIMIT) web/core/scripts/drupal quick-start standard --site-name $(SITENAME) --host $(HOST) --port $(PORT) --langcode $(LANG)


run:
	cd $(NAME); $(APPRUN) --port=$(PORT)


clean:
	sudo rm -rf $(NAME)


#
# Docker specified targets:
#
local-docker-build:
	docker build --tag localhost/$(IMAGE):dev .

local-docker-run:
	docker run --rm -p 8000:8000 --name $(NAME) --hostname $(NAME) -v $(shell pwd)/$(NAME):/drupal localhost/$(IMAGE):dev &

