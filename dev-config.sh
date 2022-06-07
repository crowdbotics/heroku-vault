#!/bin/bash

set -e

cat << EOF
disable_mlock = true

storage "s3" {
}

listener "tcp" {
 address = "0.0.0.0:${PORT}"
 tls_disable = 1
}

EOF
