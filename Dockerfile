#imgaen del Sistema Operativo
FROM ubuntu:trusty

#AUTOR
MAINTAINER fernando

#Instalar NODE.JS y dependencias
RUN apt-get update && \
    apt-get -y install curl && \
    curl sL https://deb.nodesource.com/setup_6.x  | sudo bash - && \
    apt-get -y install python build-essential nodejs

#Pasar los modulos de node(node_modules)
ADD package.json /src/package.json

#Directoriode trabajo
WORKDIR /src

#Instala dependencias
RUN npm install

#Copia del directorio donde esta el codigo al directorio dentro del container donde se va a ejecutar
COPY [".", "/src"]

#Ejecutar dentro del servidor
CMD ["node", "/src/server/server.js"]