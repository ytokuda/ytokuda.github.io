#!/bin/sh
for FILE in */*.gif
do 
  FILENAME=`echo ${FILE} | sed 's/\.[^\.]*$//'` 
  ffmpeg -i ${FILENAME}.gif -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" ${FILENAME}.mp4
done