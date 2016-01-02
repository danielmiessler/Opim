#!/bin/bash

# Take screenshots from desktop and optimize them for web
mv ~/Desktop/Screen\ Shot*.png ~/Desktop/WebImages/

# Change PNG to JPG and then resize to width of 640 
mogrify -format jpg /Users/daniel/Desktop/WebImages/*.png
mogrify -resize 640 /Users/daniel/Desktop/WebImages/*.jpg

# Run ImgOptim on the resized JPG
/Applications/ImageOptim.app/Contents/MacOS/ImageOptim /Users/daniel/Desktop/WebImages/*.jpg

# Delete the PNG
rm -rf /Users/daniel/Desktop/WebImages/*.png

# Move the JPGs back to desktop

mv ~/Desktop/WebImages/*.jpg ~/Desktop/
