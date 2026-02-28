#! /usr/bin/env bash
set -uvx
set -e
cd "$(dirname "$0")"
cwd=`pwd`
ts=`date "+%Y.%m%d.%H%M.%S"`

if [ ! -f "package-lock.json" ]; then
    ./init.sh
fi

rm -rf dist
npm run build
