#!/bin/bash
cd /home/centos/$1/scp-seg
docker-compose down
rm -rf /home/centos/$1/scp-seg/dev-env/dev-war/*
rm -rf /home/centos/$1/scp-seg/nginx/content/*
cd /home/centos/$1/scp-seg/nginx/web
git clone git@github.com:xyz/JavaWebResources.git
cd /home/centos/scp-seg1/scp-seg/nginx/web/JavaWebResources
git checkout $2
cp -R /home/centos/$1/scp-seg/nginx/web/JavaWebResources/WebContent/* /home/centos/$1/scp-seg/nginx/content
rm -rf /home/centos/$1/scp-seg/nginx/web/*
