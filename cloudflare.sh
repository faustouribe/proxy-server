docker run \
  -e API_KEY=xxxxxxx \
  -e ZONE=example.com \
  -e SUBDOMAIN=subdomain \
  --restart unless-stopped \
  oznu/cloudflare-ddns
