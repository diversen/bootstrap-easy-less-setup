#!/bin/sh
mkdir -p public 
cp -n styles.less public/ 
cp index.html public/ 
cp -rf node_modules/bootstrap public/
lessc --source-map=public/styles.map public/styles.less public/styles.css

