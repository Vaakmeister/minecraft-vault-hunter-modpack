FROM openjdk:19-bullseye

RUN apt install wget
RUN apt install unzip

WORKDIR /opt
RUN cd /opt
RUN wget https://media.forgecdn.net/files/3621/294/VaultHunters-OfficialModpack-1.12.4-Server.zip -O server.zip
RUN unzip server.zip

COPY start.sh start.sh
COPY config/server.properties server.properties
COPY config/ops.json ops.json

RUN mkdir logs
RUN mv minecraft_server*.jar minecraft_server.jar

ENTRYPOINT /bin/sh start.sh start
