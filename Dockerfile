FROM openjdk:8

WORKDIR /tmp
RUN curl https://media.forgecdn.net/files/3077/771/PO3+-+3.3.61server.zip > po3.zip

WORKDIR /app
RUN curl -O https://mohistmc.com/builds/1.12.2/mohist-1.12.2-185-server.jar
COPY init.sh init.sh
RUN chmod +x init.sh

WORKDIR /env

ENTRYPOINT /app/init.sh
