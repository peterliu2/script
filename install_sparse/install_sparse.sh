#! /bin/bash
# Program:
#			Install sparse from source
#
set -e

# 0) go to safe dir
cd /tmp

# 1) download it
git clone git://git.kernel.org/pub/scm/devel/sparse/sparse.git

# 2) cd sparse dirtetory
cd sparse

# 3) make
make

# 4) install
make install

# 5) cleanup
cd /tmp
rm -rf sparse

# 6) exit
exit 0

