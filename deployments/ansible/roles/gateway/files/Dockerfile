FROM nginx:1.19.2-alpine

WORKDIR /etc/nginx
RUN rm nginx.conf
COPY [--chown=nginx:nginx] ./nginx.conf /etc/nginx/

WORKDIR /etc/nginx/servers
COPY [--chown=nginx:nginx] ./application.conf /etc/nginx/servers/

EXPOSE 80:80
CMD ["nginx", "-g", "daemon off;"]