#/bin/sh

echo "copy black files to colorful files"
cp -f theme/black.png public/red.png
cp -f theme/black.png public/green.png
cp -f theme/black.png public/blue.png
cp -f theme/black.png public/yellow.png

echo "all files below have to be equal"
ls -la theme/*.png
ls -la public/*.png
