FROM wordpress:latest

COPY ./wp-content /var/www/html/wp-content
COPY ./conf/uploads.ini /usr/local/etc/php/conf.d/uploads.ini

RUN chown -R www-data:www-data /var/www/html/wp-content/
RUN chmod -R 755 /var/www/html/wp-content/

