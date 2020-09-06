mkdir -p dist
pandoc  -t plain  -o ./dist/raw.txt  ./*.html
cd dist
pwd
node ../../strip-useless.js
cd ..
rm -rf ./dist
