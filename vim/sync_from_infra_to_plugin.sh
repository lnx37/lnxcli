#!/bin/bash

set -e
set -o pipefail
set -u
set -x

cd "$(dirname "$0")"

date

rm -rf /opt/lnxcli/vim/plugin
mkdir -p /opt/lnxcli/vim/plugin

rsync -avz --stats --progress --exclude=".git" /root/infra/vim/ /opt/lnxcli/vim/plugin/
rsync -avz --stats --progress /root/tx/lnxcli/vim/vim_snippets/snippets /opt/lnxcli/vim/plugin/bundle/misc/

(cd /opt/lnxcli/vim && zip -qr plugin.zip plugin)

rm -f plugin.zip
cp -a /opt/lnxcli/vim/plugin.zip .

date
