FROM openjdk:8

WORKDIR /tmp
RUN curl https://media.forgecdn.net/files/3047/465/FTB_Presents_SkyFactory_3_Server_3_0_21.zip > sf3.zip

COPY init.sh /app/init.sh
RUN chmod +x /app/init.sh

WORKDIR /env

ENTRYPOINT /app/init.sh
