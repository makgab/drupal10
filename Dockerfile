#
# Docker/Podman: Fedora SQLite3
#
# Commands for examples:
#      (docker search fedora
#      docker pull fedora:latest
#      docker images
#      docker ps -a
#      docker push fedora:myset)
#
#
#      docker build --tag fedora-drupal:dev -f ./Dockerfile
#      docker run [-it] -p 8000:8000 --name drupal --hostname drupal -v $(pwd)/drupal:/drupal fedora-drupal:dev
#      docker container start container_name  # mymariadb
#      docker container stop container_name   # mymariadb
#      docker container ls
#      docker exec -it drupal /bin/bash
#      docker rm 02s02d202    # docker rm drupal9
#      docker rmi drupal
#      docker volume ls
#      docker logs 02s02d202  # docker logs drupal
#      docker image inspect fedora:drupal
#


FROM    fedora:latest
MAINTAINER MG <makgab@gmail.com>

RUN dnf -y update
RUN dnf -y install composer which bash tar wget curl git php php-pdo php-dom php-gd memcached php-pecl-memcache php-pear-Console-Table php-mysqlnd procps mc sqlite php-symfony-*
RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.rpm.sh' | sudo -E bash
RUN dnf -y install symfony-cli

# VOLUME
VOLUME /drupal

# Expose port(s)
EXPOSE 8000


# WORK
WORKDIR /drupal


# CMD, ENTRYPOINT
ENTRYPOINT symfony server:start --port=8000
