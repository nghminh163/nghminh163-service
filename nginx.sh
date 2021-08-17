rm -rf nginx
mkdir nginx
docker run -d -p 80:80 -p 443:443 -v $PWD:/etc/nginx/conf.d -v /var/run/docker.sock:/tmp/docker.sock:ro nginxproxy/nginx-proxy