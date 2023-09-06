#!/bin/sh

tag=`curl https://api.github.com/repos/lbl8603/vnt/releases/latest | grep 'tag_name' | cut -d\" -f4`
echo tag=$tag
cd /opt/st
curl -L https://github.com/alist-org/alist/releases/download/$tag/alist-linux-musl-mipsle.tar.gz -O alist-linux-musl-mipsle.tar.gz
tar -xzvf alist-linux-musl-mipsle.tar.gz -C /opt/st
