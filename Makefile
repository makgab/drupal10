#
# DRUPAL 10 CMS
#

#
# variables:
#
APPRUN = cd drupal && symfony server:start
PORT = 8000

# ------------------------------------------------------------------------------------------
# targets:
#
build:
	echo "No need build :)"

run:
	$(APPRUN) --port=$(PORT)

clean:
	echo "No need clean :)"


