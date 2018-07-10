#!/bin/bash
certbot renew --dry-run --manual-auth-hook `realpath ./auth.sh` --manual-cleanup-hook `realpath ./clean.sh`
