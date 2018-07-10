#!/bin/bash
id=`echo $CERTBOT_AUTH_OUTPUT|jq -r .RecordId`
aliyun alidns DeleteDomainRecord --RecordId $id
