# cp -R img/ html/img/
# marp --allow-local-files --config-file ./marp/marp-engine.js --html $1.md -o html/$1.html
cp -R `dirname $1`/img/ ./slides/html/`dirname $1`/img/
marp --allow-local-files --config-file ./marp/marp-engine.js --html $1 -o ./slides/html/$1.html
open ./slides/html/$1.html