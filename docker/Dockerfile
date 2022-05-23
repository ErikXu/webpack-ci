# 使用 nginx 作为基础镜像
FROM nginx:1.20-alpine

# 拷贝静态文件到 /usr/share/nginx/html 目录
COPY . /usr/share/nginx/html

# Support route in history mode, comment below line if using hash mode
RUN sed -i 's|\s\+root\s\+/usr/share/nginx/html|        try_files $uri $uri/ /index.html;\n        root   /usr/share/nginx/html|' /etc/nginx/conf.d/default.conf

# 暴露 80 端口
EXPOSE 80

# 启动指令
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
