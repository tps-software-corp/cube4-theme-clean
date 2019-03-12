FROM tabenguyen/eccube4-apache:1.4

COPY ./gulpfile.js /var/www/html/gulpfile.js

WORKDIR /var/www/html