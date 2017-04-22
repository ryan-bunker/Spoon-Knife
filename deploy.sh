#!/bin/sh

echo "Copying static files to web root..."
cp -r ./* /var/www/
echo "Update sha hash..."
git rev-parse HEAD > /var/www/git-sha
echo "All done!"

