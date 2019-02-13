#!/bin/bash

set -e

cat << EOF
disable_mlock = true

storage "s3" {
}

listener "tcp" {
 address = "127.0.0.1:8080"
 tls_disable = 1
}

EOF
