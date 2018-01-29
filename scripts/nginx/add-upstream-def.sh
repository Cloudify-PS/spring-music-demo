#!/bin/bash -e

exec >> ~/add-upstream-def.log 2>&1

cat <<EOF | sudo tee /etc/nginx/sites-available/music
server {
  location / {
    proxy_pass          http://localhost:8080;
    proxy_http_version  1.1;
    gzip_static on;
  }
}
EOF

cd /etc/nginx/sites-enabled && sudo ln -sf ../sites-available/music

sudo systemctl reload nginx
