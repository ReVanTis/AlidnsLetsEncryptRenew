#!/bin/bash
DOMAIN="example.com"
certbot --server https://acme-v02.api.letsencrypt.org/directory -d "$DOMAIN" -d "*.$DOMAIN" --preferred-challenges=dns --manual certonly
