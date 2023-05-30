FROM nginx:1.22.1-alpine

LABEL project="bootcamp-web"

WORKDIR /usr/share/nginx/html

RUN rm /usr/share/nginx/html/index.html

COPY web/ /usr/share/nginx/html

EXPOSE 80



#creacion imagen
# docker build -t web:1 .

#ejecucion contenedor
#docker run -it -d --name=web -p 80:80 web:1