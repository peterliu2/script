#! /bin/bash
# Program:
#			install apach protable runtime
#
set -e

# go somewhere safe
cd /tmp

# get the source to base APR 1.5.2
curl -L -O http://apache.stu.edu.tw/apr/apr-1.5.2.tar.gz

# extract it and go into the source
tar -xzvf apr-1.5.2.tar.gz
cd apr-1.5.2

# configure, make, make install
./configure
make
sudo make install

# reset and cleanup
cd /tmp
rm -rf apr-1.5.2 apr-1.5.2.tar.gz

# do the same with apr-util
cd /tmp
curl -L -O http://apache.stu.edu.tw/apr/apr-util-1.5.4.tar.gz

# extract it and go into the source
tar -xzvf apr-util-1.5.4.tar.gz
cd apr-util-1.5.4

# configure, make, make install
./configure --with-apr=/usr/local/apr
# you need that extra parameter to configure because apr-util can't really find it because...who knows.
make
sudo make install

# cleanup
cd /tmp
rm -fr apr-util-1.5.4 apr-util-1.5.4.tar.gz
