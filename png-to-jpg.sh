#!/usr/bin/env bash

#deklare variables
png_files="*.png"
count=0

#convert the images
for image in $png_files
do magick $image conveted-$count.jpg
((count++))
done
