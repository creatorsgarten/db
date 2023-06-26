FROM nocodb/nocodb:latest

RUN tar -xzf /usr/src/appEntry/app.tar.gz -C /usr/src/app/
RUN ls -l /usr/src/app && test -d /usr/src/app/docker/public
COPY ./public/ /usr/src/app/docker/public/