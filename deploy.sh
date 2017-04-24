#!/bin/sh

echo "Copying static files to web root..."
rm -rfv /var/www/*
cp -rv ./* /var/www
echo "Update sha hash..."
git rev-parse HEAD > /var/www/git-sha
echo "All done!"

