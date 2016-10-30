#!/bin/sh
mkdir -p public 
cp -n styles.less public/ 
cp index.html public/ 
lessc --source-map=output/styles.map public/styles.less public/styles.css

