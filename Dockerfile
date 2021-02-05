FROM openjdk:8

WORKDIR /tmp
RUN curl https://media.forgecdn.net/files/3077/771/PO3+-+3.3.61server.zip > po3.zip

WORKDIR /app
COPY init.sh init.sh

WORKDIR /app/mods
RUN curl -O https://mohistmc.com/builds/1.12.2/mohist-1.12.2-185-server.jar

WORKDIR /env

ENTRYPOINT /app/init.sh
