#!/bin/bash

#new user


cur_dir=`pwd`
mkdir -p ./tmp
cd ./tmp

#create new user
useradd wangxiao
echo "xiaowang" > ./passwd.txt
passwd wangxiao --stdin < ./passwd.txt
rm -f ./passwd.txt

#yum 源更新
yum -y install epel-release

#install denyhost
wget -O ./denyhosts.rpm https://mirrors.aliyun.com/repoforge/redhat/el7/en/x86_64/dag/RPMS/denyhosts-2.6-5.el7.rf.noarch.rpm
rpm -ivh ./denyhosts.rpm
service  denyhosts start



#install python3
type python3
if [ $? -eq 1 ];then
	
	echo "start install python3"
	yum -y install python3

fi

type pip3
if [ $? -eq 1 ];then

	echo "start install pip"
	curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
	python3 ./get-pip.py

fi


type virtualenv
if [ $? -eq 1 ];then
	
	pip3 install virtualenv

fi








