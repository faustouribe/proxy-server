#!/bin/bash -x
source local
docker run \
  --name=cloudflare-ddns \
  -e API_KEY=$cloudlareapi \
  -e ZONE=$domain \
  -e SUBDOMAIN=$subdomain \
  --restart unless-stopped \
  oznu/cloudflare-ddns
