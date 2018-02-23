#系统环境ubuntu16.04
#安装pip
sudo apt-get update;
sudo apt-get install python-pip;

#更新pip
pip install --upgrade pip;

#安装setuptools
sudo apt-get install python-setuptools;

#安装shadowsocks
sudo pip install shadowsocks;

#安装python-dev
sudo apt-get install python-dev;

#安装m2crypto
sudo apt-get install python–m2crypto;

#启动shadowsocks,-p [参数，自己改] -k [密码，自己改] -m [加密方式] -d [start/stop]
sudo ssserver -p 8388 -k password -m rc4-md5 -d start


