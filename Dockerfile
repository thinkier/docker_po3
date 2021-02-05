FROM openjdk:8

WORKDIR /tmp
RUN curl https://media.forgecdn.net/files/3077/771/PO3+-+3.3.61server.zip > po3.zip

WORKDIR /app
COPY init.sh init.sh
RUN chmod +x init.sh

WORKDIR /app/mods
RUN curl -O https://repo.spongepowered.org/maven/org/spongepowered/spongeforge/1.12.2-2838-7.3.0/spongeforge-1.12.2-2838-7.3.0.jar

WORKDIR /env

ENTRYPOINT /app/init.sh
