#!/bin/bash

cd ./imgs/communities

for i in `ls ./*.{png,jpg}`; do
	cd ./imgs
	mkdir converted
	gm convert $i ./converted/${$i%%.*}.png
	mkdir 320
	gm convert $i -resize 320x -unsharp 2x0.5+0.7+0 -quality 98 ./320/$i.320w.png
	mkdir 480
	gm convert $i -resize 480x -unsharp 2x0.5+0.7+0 -quality 98 ./480/$i.480w.png
	mkdir 800
	gm convert $i -resize 800x -unsharp 2x0.5+0.7+0 -quality 98 ./800/$i.800w.png
	cd ..
done

cd ..
