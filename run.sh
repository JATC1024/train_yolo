#!/bin/bash
#echo "Cloning the yolo repository"
#git clone https://github.com/AlexeyAB/darknet.git
#cd darknet


cp prepared_file/Makefile darknet/Makefile
cd darknet
make
