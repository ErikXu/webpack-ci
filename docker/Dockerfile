FROM nginx:1.20-alpine

COPY . /usr/share/nginx/html

# Support route in history mode, comment below line if using hash mode
RUN sed -i 's|\s\+root\s\+/usr/share/nginx/html|        try_files $uri $uri/ /index.html;\n        root   /usr/share/nginx/html|' /etc/nginx/conf.d/default.conf

EXPOSE 80
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]