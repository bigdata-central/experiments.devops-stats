FROM httpd:2.4-alpine

ENV WORKDIR "/usr/local/apache2/htdocs/"
WORKDIR $WORKDIR

COPY . $WORKDIR
RUN mv $WORKDIR/healthcheck.sh /usr/bin/healthcheck.sh && chmod +x /usr/bin/healthcheck.sh

WORKDIR /usr/local/bin/

EXPOSE 80
CMD ["httpd-foreground"]