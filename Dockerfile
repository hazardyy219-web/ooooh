# 使用 Nginx 官方基础镜像
FROM nginx:alpine

# 维护者信息
LABEL maintainer="Birthday Website"

# 将当前目录的文件复制到 Nginx 静态文件目录
COPY . /usr/share/nginx/html

# 暴露 80 端口
EXPOSE 80

# 启动 Nginx
CMD ["nginx", "-g", "daemon off;"]
