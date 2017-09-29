#!/bin/sh
echo -n 'password: '
read -s pw
echo
openssl enc -aes-256-cbc -pass "pass:$pw" -in magma.py > magma.py.enc
