set windows-shell := ["powershell", "-Command"]

_default:
    @just help

help:
    @just --list

init:
    echo "Make sure you have `npm` installed in your system."
    cp utils\autocd.bat $Env:USERPROFILE\Desktop\github-post.bat
    npm install -g hexo-cli
    npm install

post name:
    if (Test-Path .\source\_posts\{{name}}.md) { Write-Error "File with that name already exists"; }
    npx hexo new {{name}}
    & "C:\Program Files\Typora\Typora.exe" .\source\_posts\{{name}}.md

push:
    git add -A
    git commit -m "Update at $(Get-date -Format yyyyMMdd_HH:mm:ss)"
    git push

pull:
    git pull

preview:
    npx hexo server

delete name:
    rm .\source\_posts\{{name}}.md