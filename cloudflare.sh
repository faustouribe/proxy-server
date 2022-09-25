#!/bin/bash -x
source local
docker run \
  --name=cloudflare-ddns \
  -e API_KEY=$CFAPIKEY \
  -e ZONE=$CFDOMAIN \
  -e SUBDOMAIN=$CFSUBDOMAIN \
  --restart unless-stopped \
  oznu/cloudflare-ddns
