#!/bin/bash
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Cloning the yolo repository"
git clone https://github.com/AlexeyAB/darknet.git
cd darknet
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Copying all the prepared files"
cp ../prepared_files/* .
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

echo "Make file"
make


echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Getting pretrained weights"
wget https://pjreddie.com/media/files/yolo.weights
echo "Testing out yolo"
./darknet detect cfg/yolo.cfg yolo.weights data/dog.jpg
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Copying data"
cp -r ../my_data ./data/my_data
echo "Creating train.txt and test.txt"
python prepare_train_test_file.py
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
