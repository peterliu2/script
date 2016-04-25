#! /bin/bash
# Program:
#			Install valgrind from source
#
set -e

# 0) go to safe dir
cd /tmp

# 1) Download it
curl -O http://valgrind.org/downloads/valgrind-3.11.0.tar.bz2

# use md5sum to make sure it matches the one on the site
md5sum valgrind-3.11.0.tar.bz2

# 2) Unpack it
tar -xjvf valgrind-3.11.0.tar.bz2

# cd into the newly created dirction
cd valgrind-3.11.0

# 3) setup the environment
./autogen.sh

# 4) configure it
./configure

# 5) make it
make

# 6) install it (need root)
sudo make install

# 7) cleanup
cd /tmp
rm -fr valgrind-3.11.0.tar.bz2 valgrind-3.11.0

# 8) exit
exit 0
