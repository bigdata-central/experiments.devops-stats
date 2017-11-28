FROM nginx:latest

ENV WORKDIR "/usr/share/nginx/html/"
WORKDIR $WORKDIR
RUN rm -Rf $WORKDIR/*

COPY . $WORKDIR
RUN mv $WORKDIR/healthcheck.sh /usr/bin/healthcheck.sh && chmod +x /usr/bin/healthcheck.sh


EXPOSE 80
STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]

