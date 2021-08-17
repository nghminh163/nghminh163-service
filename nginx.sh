rm -rf nginx
mkdir nginx
docker run -d -p 80:80 -p 443:443 -v $PWD/certs:/etc/nginx/certs -v /var/run/docker.sock:/tmp/docker.sock:ro --name nghminh163-nginx-proxy --net nghminh163-network jwilder/nginx-proxy