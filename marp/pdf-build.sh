#marp --allow-local-files --config-file ./marp/marp-engine.js --pdf $1.md -o pdf/$1.pdf --pdf-outlines --pdf-outlines.pages=false --pdf-outlines.headings=true
npx @marp-team/marp-cli@latest --allow-local-files --config-file ./marp/marp-engine.js --pdf $1.md -o pdf/$1.pdf --pdf-outlines --pdf-outlines.pages=false --pdf-outlines.headings=true

