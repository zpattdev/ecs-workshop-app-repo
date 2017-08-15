FROM nginx
COPY index.html /usr/share/nginx/html/
COPY mysite.template /etc/nginx/conf.d/
CMD /bin/bash -c "envsubst < /etc/nginx/conf.d/mysite.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
