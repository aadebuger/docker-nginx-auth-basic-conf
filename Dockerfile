From nginx
run apt-get update
run apt-get -y install git
run git clone https://github.com/aadebuger/nginx_auth_basic_conf  /data/nginx_auth_basic_conf
workdir /data/nginx_auth_basic_conf
expose 80
CMD ["nginx", "-p", "./", "-c", "./nginx.conf"]
