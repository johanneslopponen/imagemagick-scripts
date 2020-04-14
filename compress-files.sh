#!/bin/bash

#store the files to be converted
jpg_files=*.jpg
jpeg_files=*.jpeg
tif_files=*.tif
tiff_files=*.tiff
quality_value=50
#create a variable to count up the file names
count=0

#convert the tif images
for tif_file in $tif_files
do magick $tif_file -quality $quality_value converted-$count.jpg
((count++))
done

#convert the tiff images
for tiff_file in $tiff_files
do magick $tiff_file -quality $quality_value converted-$count.jpg
((count++))
done

for jpg_file in $jpg_files
do magick $jpg_file -quality $quality_value converted-$count.jpg
((count++))
done

for jpeg_file in $jpeg_files
do magick $jpeg_file -quality $quality_value converted-$count.jpg
((count++))
done