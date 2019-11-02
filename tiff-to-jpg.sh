#!/bin/bash

#store the files to be converted
tif_files=*.tif
tiff_files=*.tiff

#create a variable to count up the file names
count=0

#convert the tif images
for tif_file in $tif_files
do magick $tif_file converted-$count.jpg
((count++))
done

#convert the tiff images
for tiff_file in $tiff_files
do magick $tiff_file converted-$count.jpg
((count++))
done
