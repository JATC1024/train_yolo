#!/bin/bash
echo "Cloning the yolo repository"
git clone https://github.com/AlexeyAB/darknet.git
cd darknet


echo "Editing the Makefile"
cp ../prepared_file/Makefile Makefile
make


echo "Getting pretrained weights"
wget https://pjreddie.com/media/files/yolo.weights
./darknet detect cfg/yolo.cfg yolo.weights data/dog.jpg
