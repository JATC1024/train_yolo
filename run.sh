#!/bin/bash
echo "Cloning the yolo repository"
git clone https://github.com/AlexeyAB/darknet.git
cd darknet

echo "Copying all the prepared files"
cp ../prepared_files/* .

echo "Make file"
make


#echo "Getting pretrained weights"
#wget https://pjreddie.com/media/files/yolo.weights
#./darknet detect cfg/yolo.cfg yolo.weights data/dog.jpg

echo "Creating train.txt and test.txt"
python prepare_train_test_file.py
