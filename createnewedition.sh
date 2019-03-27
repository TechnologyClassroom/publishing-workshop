#!/bin/bash

# createnewedition.sh
# Compile new epub and mobi and view epub.
# Michael McMahon

echo "Removing build directory..."
rm -fr build

echo "Creating new epub..."
sphinx-build -b epub source build

echo "Creating mobi from epub..."
ebook-convert build/publishing-workshop.epub build/publishing-workshop.mobi

echo "Opening epub..."
ebook-viewer --detach -f build/publishing-workshop.epub
