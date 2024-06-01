FROM nginx:latest

RUN rm -f /etc/nginx/conf.d/*
COPY ./nginx.conf /etc/nginx/conf.d
COPY ./index.html /usr/share/nginx/html
COPY ./OrbitControls.js /usr/share/nginx/html
COPY ./STLLoader.js /usr/share/nginx/html
COPY ./stl-viewer.js /usr/share/nginx/html
COPY ./three.min.js /usr/share/nginx/html

EXPOSE 80

VOLUME /usr/share/nginx/html/models
