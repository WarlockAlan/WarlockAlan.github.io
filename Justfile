set windows-shell := ["powershell", "-Command"]

_default:
    @just help

help:
    @just --list

init:
    echo "Make sure you have `npm` installed in your system."
    npm install -g hexo-cli
    npm install

post name:
    npx hexo new {{name}}

push:
    git add -A
    git commit -m "Update at $(date yyyyMMdd)"
    git push

pull:
    git pull

preview:
    npx hexo server