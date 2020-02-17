find . -name "*.png" -type f | sed 's/\.png$//' | xargs -I% convert %.png -background white -flatten ../results/%.jpg
