#! /bin/bash
# Program:
#			Install coccinelle from source
#
set -e

# 1) Install pre-request package
sudo apt-get install pkg-config ocaml-native-compilers ocaml-findlib libpycaml-ocaml-dev menhir libmenhir-ocaml-dev libpcre-ocaml-dev texlive-fonts-extra

# 2) go safe dir
cd /tmp

# 3) download it
git clone git@github.com:coccinelle/coccinelle.git

# 4) cd into download directory
cd coccinelle 

# 5) configure it
./autogen
./configure

# 6) make
make

# 7) install
sudo make install

# 8) clean up
cd /tmp
rm -fr coccinelle

# 9) exit
exit 0
