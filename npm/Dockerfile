FROM node:8

WORKDIR /var/www/html

RUN apt-get update \ 
    && apt-get install -y git wget openssl \
    && git clone https://github.com/eccubevn/ec-cube-vn.git /var/www/html \
    && chmod -R 777 /var/www/html 

RUN npm install -g gulp gulp-cli;
RUN npm install --save-dev gulp-watch \
    && npm install 

COPY ./gulpfile.js /var/www/html/gulpfile.js
RUN chmod 777 /var/www/html/gulpfile.js

CMD [ "gulp", "watch" ]
