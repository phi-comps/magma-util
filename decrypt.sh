#!/bin/sh
echo -n 'password: '
read -s pw
echo
openssl enc -d -aes-256-cbc -pass "pass:$pw" -in magma.py.enc > magma.py
