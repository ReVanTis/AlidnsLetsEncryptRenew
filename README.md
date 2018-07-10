# AlidnsLetsEncryptRenew
A dirty hacking script for renewal wildcard Let's Encrypt SSL certs for Alidns users using dns challenge.

If your Let's Encrypt wildcard certificate is issued with dns challenge like:

```
#!/bin/bash
DOMAIN="example.com"
certbot --server https://acme-v02.api.letsencrypt.org/directory -d "$DOMAIN" -d "*.$DOMAIN" --preferred-challenges=dns --manual certonly
```

Since Alidns is not officially supported by certbot, hook scripts can be used to automate the renewal for these certs.

To use these hook script, you must first setup you Aliyun cli tool, see HOWTO in REF.

Hook script can be inject like this:

```
certbot renew --dry-run --manual-auth-hook `realpath ./auth.sh` --manual-cleanup-hook `realpath ./clean.sh`
```

REF:

[Certbot docs for hook](https://certbot.eff.org/docs/using.html#pre-and-post-validation-hooks)

[Aliyun cli HOW TO setup](https://help.aliyun.com/document_detail/66653.html)

[Alidns api docs for adding/deleting records](https://help.aliyun.com/document_detail/29772.html)
