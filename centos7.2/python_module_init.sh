#!/bin/bash


APP_NAME="virtualenv"

mkdir ./virtualenv
cd ./virtualenv


virtualenv ./
echo "source ~/virtualenv/bin/activate" >> ~/.bashrc
source ~/.bashrc
pip3 install requests
pip3 install lxml




