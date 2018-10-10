#!/usr/bin/env bash

filename="go"$1".linux-amd64.tar.gz"

curl 'https://dl.google.com/go/'$filename -o $filename

tar -C /usr/local -xzf $filename

echo "export PATH=$PATH:/usr/local/go/bin" >> /etc/profile

source /etc/profile
