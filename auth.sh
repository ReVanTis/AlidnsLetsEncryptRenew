#!/bin/bash
aliyun alidns AddDomainRecord --DomainName $CERTBOT_DOMAIN --RR _acme-challenge --Type TXT --Value $CERTBOT_VALIDATION --TTL 600
sleep 5
