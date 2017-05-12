FROM nginx:alpine

COPY nginx.conf /etc/nginx
COPY public /usr/share/nginx/html

RUN apk add --update bash && rm -rf /var/cache/apk/*

EXPOSE 80

CMD /bin/bash -c "echo \"listen $PORT;\" > /etc/nginx/listen.conf && nginx -g 'daemon off;'"