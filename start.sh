 #!/bin/bash

#Settings
SERVICE='minecraft_server.jar'
OPTIONS='--nogui'
MAXHEAP=4096
MINHEAP=4096

java -Xmx${MAXHEAP}M -Xms${MINHEAP}M \
 -jar $SERVICE $OPTIONS