FROM kitematic/hello-world-nginx

USER root

ADD index.html /website_files/index.html

ADD error.log /var/log/nginx/error.log

RUN /bin/chown -R nobody:nogroup /var/log/nginx && \
  /bin/mkdir /var/lib/nginx/body /var/lib/nginx/fastcgi /var/lib/nginx/proxy /usr/scgi_temp /usr/uwsgi_temp && \
  /bin/chmod 700 /var/lib/nginx/body /var/lib/nginx/fastcgi /var/lib/nginx/proxy /usr/scgi_temp /usr/uwsgi_temp && \
  /bin/chown nobody /var/lib/nginx/body /var/lib/nginx/fastcgi /var/lib/nginx/proxy /usr/scgi_temp /usr/uwsgi_temp && \
  /bin/chmod 666 /var/log/nginx/error.log

ENTRYPOINT /start.sh
